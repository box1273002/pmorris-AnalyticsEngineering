with

    source as (select distinct * from {{ ref("stg_members") }}),

    filtered as (
        select
            * exclude(postcode, join_date),
            -- (https://assets.publishing.service.gov.uk/government/uploads/system/uploads/attachment_data/file/488478/Bulk_Data_Transfer_-_additional_validation_valid_from_12_November_2015.pdf)
            {{
                regex_check(
                    "postcode",
                   "^([Gg][Ii][Rr] 0[Aa]{2})|((([A-Za-z][0-9]{1,2})|(([A-Za-z][A-Ha-hJ-Yj-y][0-9]{1,2})|(([A-Za-z][0-9][A-Za-z])|([A-Za-z][A-Ha-hJ-Yj-y][0-9]?[A-Za-z])))) [0-9][A-Za-z]{2})$" 
                )
            }}
            as postcode,
            case
                when
                    extract(year from join_date) >= (select opened_year from {{ ref('int_branches') }} where branch_id = home_branch_id)
                    and join_date <= current_date
                then join_date
                else null
            end as join_date
        from source
        where (home_branch_id in (select branch_id from {{ ref("int_branches") }}))

    ),

    -- Picks the membership id with the latest join_date if they are the same picks
    -- randomly.
    -- (This clears duplicates as well)
    deduplicated as (
        select *
        from filtered
        qualify row_number() over (partition by member_id order by join_date desc) = 1
    )

select *
from deduplicated
