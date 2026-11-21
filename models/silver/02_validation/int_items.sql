WITH

source AS (
  SELECT * FROM {{ ref('stg_items') }}
),
-- Checks the foreigns key are all valid and deletes the rows if not (this may need
-- to be rethought as somepoint as it my still be useful imformation)
filtered AS (
  SELECT 
  * EXCLUDE(replacement_cost),
  ABS(replacement_cost) AS replacement_cost
  FROM source WHERE (item_id IS NOT NULL)
    AND (home_branch_id IN (SELECT branch_id FROM {{ ref('int_branches') }}))
),

-- Picks a row an id at random as there isn't much else we can do.
-- TODO pick the most complete column
deduplicated AS (
  select * FROM filtered 
  QUALIFY ROW_NUMBER() OVER (
    PARTITION BY item_id
) = 1
)

SELECT * FROM deduplicated
