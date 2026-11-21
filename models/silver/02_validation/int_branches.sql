WITH
source AS (
  select * FROM {{ ref('raw_branches') }}
),

-- Filters and clean the data
filtered AS (
  SELECT 
    * EXCLUDE(opened_year),
    CASE
      WHEN opened_year > {{ var('min_opened_year') }}
        AND opened_year < EXTRACT(YEAR FROM CURRENT_DATE)
      THEN opened_year
      ELSE NULL
    END AS opened_year
  from source WHERE branch_id IS NOT NULL
),

deduplicated AS (
  SELECT *
  FROM filtered
  QUALIFY ROW_NUMBER() OVER (
      PARTITION BY branch_id
      ORDER BY opened_year DESC
  ) = 1
)

select * from deduplicated

