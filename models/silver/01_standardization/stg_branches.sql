with

    source as (select * from {{ ref("raw_branches") }}),

    standardized as (
        select
            upper({{ string_strip("branch_id") }}) as branch_id,
            {{ string_titlecase("branch_name") }} as branch_name,
            {{
                map_category(
                    string_category("area"),
                    {
                        "North": ["north"],
                        "East": ["east"],
                        "South": ["south"],
                        "West": ["west"],
                    },
                )
            }} as area,
            opened_year,
        from source
    )

select *
from standardized
