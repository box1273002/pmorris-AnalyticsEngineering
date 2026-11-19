with

source as (

    select * from {{ ref('raw_items') }}

),
cleaned as (
  select 
    item_id,
    {{ string_titlecase("title")}} AS title,
    {{ map_category(
      string_category("item_type"),
      {
        'DVD': ['dvd'],
        'Audiobook': ['audiobook'],
        'Book': ['book']
      }
    )
    }} AS item_type,
    {{ map_category(
      string_category("category"),
      {
        'Children': ['children'],
        'Reference': ['ref.', 'reference'],
        'Film': ['film'],
        'Fiction': ['fiction'],
        'Non-Fiction': ['nonfiction']
      }
    )
    }} AS category,
    {{ clean_gbp("replacement_cost")}} AS replacement_cost,
    home_branch_id,
    from source
)
-- Consider filtering

select * from cleaned
