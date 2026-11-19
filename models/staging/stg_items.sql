with

source as (

    select * from {{ ref('raw_items') }}

),
cleaned as (
  select 
    item_id,
    {{ string_titlecase("title")}} AS title,
    {{ string_titlecase("item_type")}} AS item_type,
    {{ string_titlecase("category")}} AS category,
    -- replacement_cost
    home_branch_id,
    from source
)

select * from cleaned
