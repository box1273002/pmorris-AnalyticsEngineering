with

    source as (select * from {{ ref("raw_items") }}),

    standarized as (
        select
            upper({{ string_strip("item_id") }}) as item_id,
            {{ string_titlecase("title") }} as title,
            {{
                map_category(
                    string_category("item_type"),
                    {"DVD": ["dvd"], "Audiobook": ["audiobook"], "Book": ["book"]},
                )
            }} as item_type,
            {{
                map_category(
                    string_category("category"),
                    {
                        "Children": ["children", "childrens"],
                        "Reference": ["ref.", "reference"],
                        "Film": ["film", "films"],
                        "Fiction": ["fiction"],
                        "Non-Fiction": ["nonfiction"],
                    },
                )
            }} as category,
            {{ clean_gbp("replacement_cost") }} as replacement_cost,
            upper({{ string_strip("home_branch_id") }}) as home_branch_id,
        from source
    )

select *
from standarized
