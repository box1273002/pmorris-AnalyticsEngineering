with

source as (
    select distinct * from {{ ref('raw_items') }}
),
standarized as (
  select 
    upper({{ string_strip("item_id") }}) as item_id,
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
        'Children': ['children', 'childrens'],
        'Reference': ['ref.', 'reference'],
        'Film': ['film', 'films'],
        'Fiction': ['fiction'],
        'Non-Fiction': ['nonfiction']
      }
    )
    }} AS category,
    {{ clean_gbp("replacement_cost")}} AS replacement_cost,
    upper({{ string_strip("home_branch_id") }}) as home_branch_id,
    from source
),

-- Checks the foreigns key are all valid and deletes the rows if not (this may need
-- to be rethought as somepoint as it my still be useful imformation)
validated as (
  select * from standarized where home_branch_id in (select branch_id from stg_branches)
),

-- Picks a row an id at random as there isn't much else we can do.
-- TODO pick the most column column
deduplicated as (
  select * from validated 
  qualify row_number() over (
    partition by item_id
) = 1
)

select * from deduplicated
