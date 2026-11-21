WITH

source AS (
    SELECT * FROM {{ ref('raw_items') }}
),

standarized AS (
  SELECT 
    UPPER({{ string_strip("item_id") }}) AS item_id,
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
    UPPER({{ string_strip("home_branch_id") }}) as home_branch_id,
    FROM source
)

SELECT * FROM standarized
