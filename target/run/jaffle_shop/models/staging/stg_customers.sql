
  
  create view "my_project"."main"."stg_customers__dbt_tmp" as (
    with

source as (

    -- 
    select * from "my_project"."main_raw"."raw_customers"

),

renamed as (

    select

        ----------  ids
        id as customer_id,

        ---------- text
        name as customer_name

    from source

)

select * from renamed
  );
