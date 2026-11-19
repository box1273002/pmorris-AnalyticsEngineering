with

source as (

    select * from {{ ref('raw_branches') }}

),
cleaned as (
  select 
    * EXCLUDE(opened_year),
    CAST(opened_year AS INT) AS opened_year,
    from source
)

select * from cleaned
