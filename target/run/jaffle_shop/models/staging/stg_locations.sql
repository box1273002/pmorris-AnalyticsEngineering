
  
  create view "my_project"."main"."stg_locations__dbt_tmp" as (
    with

source as (

    -- 
    select * from "my_project"."main_raw"."raw_stores"

),

renamed as (

    select

        ----------  ids
        id as location_id,

        ---------- text
        name as location_name,

        ---------- numerics
        tax_rate,

        ---------- timestamps
        cast(opened_at as date) as opened_date

    from source

)

select * from renamed
  );
