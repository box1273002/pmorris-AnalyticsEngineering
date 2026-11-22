with

    source as (select * from {{ ref("raw_members") }}),

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
            -- Consideration was given to doing the complete regex check at this stage.
            -- It probably should have been done here but for the proposes of this
            -- project
            -- as all the postcode it will be done in validation.
            regexp_replace(
                upper({{ string_category("postcode") }}), '([0-9][A-Za-z]{2})$', ' \1'
            ) as postcode,
        from source
    )
select *
from standardized
