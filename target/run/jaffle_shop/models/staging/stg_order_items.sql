
  
  create view "my_project"."main"."stg_order_items__dbt_tmp" as (
    with

source as (

    -- 
    select * from "my_project"."main_raw"."raw_items"

),

renamed as (

    select

        ----------  ids
        id as order_item_id,
        order_id,
        sku as product_id

    from source

)

select * from renamed
  );
