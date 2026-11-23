with
    source as (select * from {{ ref("raw_branches") }}),

    -- Filters and clean the data
    filtered as (
        select
            * exclude (opened_year),
            case
                when
                    opened_year > {{ var("min_opened_year") }}
                    and opened_year <= extract(year from current_date)
                then opened_year
                else null
            end as opened_year
        from source
        where branch_id is not null
    ),

    deduplicated as (
        select *
        from filtered
        qualify row_number() over (partition by branch_id order by opened_year desc) = 1
    )

select *
from deduplicated
