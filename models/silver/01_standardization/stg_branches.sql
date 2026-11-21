WITH

source AS (

    SELECT * FROM {{ ref('raw_branches') }}

),

standardized AS (
  SELECT 
    UPPER({{ string_strip("branch_id") }}) as branch_id,
    {{ string_titlecase("branch_name")}} as branch_name,
    {{ map_category(
      string_category("area"),
      {
        'North': ['north'],
        'East': ['east'],
        'South': ['south'],
        'West': ['west'],
      }
    )
    }} AS area,
    opened_year,
    FROM source
)

SELECT * FROM standardized
