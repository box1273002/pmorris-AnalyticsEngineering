with

source as (

    select distinct * from {{ ref('raw_branches') }}

),
cleaned as (
  select 
    * EXCLUDE(opened_year),
    TRY_CAST(opened_year AS INT) AS opened_year,
    from source
)

select * from cleaned
