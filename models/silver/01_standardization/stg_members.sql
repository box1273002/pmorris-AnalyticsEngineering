with

    source as (select distinct * from {{ ref("raw_members") }}),

    standardized as (
        select
            upper({{ string_strip("member_id") }}) as member_id,
            {{ extract_date(string_strip("join_date")) }} as join_date,
            {{
                map_category(
                    string_category("age_band"),
                    {
                        "<12": ["under12", "<12"],
                        "12-17": ["1217", "12to17"],
                        "18-34": ["1834", "18to34"],
                        "35-59": ["3559", "35to59"],
                        "60+": ["60plus", "60+", ">60"],
                    },
                )
            }} as age_band,
            {{
                map_category(
                    string_category("membership_type"),
                    {
                        "Junior": ["junior", "junor"],
                        "Standard": ["std", "standard"],
                        "Concession": ["concession", "concesion"],
                    },
                )
            }} as membership_type,
            upper({{ string_strip("home_branch_id") }}) as home_branch_id,
            -- Official government postcode regex with the space between ZZ9 7LZ made
            -- optional.
            -- In this case it will always be removed but we might as well leave it
            -- optional.
            -- (https://assets.publishing.service.gov.uk/government/uploads/system/uploads/attachment_data/file/488478/Bulk_Data_Transfer_-_additional_validation_valid_from_12_November_2015.pdf)
            {{
                regex_check(
                    string_category("postcode"),
                    "^([Gg][Ii][Rr] 0[Aa]{2})|((([A-Za-z][0-9]{1,2})|(([A-Za-z][A-Ha-hJ-Yj-y][0-9]{1,2})|(([A-Za-z][0-9][A-Za-z])|([A-Za-z][A-Ha-hJ-Yj-y][0-9]?[A-Za-z])))) ?[0-9][A-Za-z]{2})$",
                )
            }}
            as postcode,
        from source
    ),

    -- Checks the foreigns key are all valid and deletes the rows if not (this may need
    -- to be rethought as somepoint as it my still be useful imformation)
    validated as (
        select *
        from standardized
        where home_branch_id in (select branch_id from stg_branches)
    ),

    -- Picks the membership id with the latest join_date if they are the same picks
    -- randomly.
    -- (This clears duplicates as well)
    deduplicated as (
        select *
        from validated
        qualify row_number() over (partition by member_id order by join_date desc) = 1
    )

select *
from deduplicated
