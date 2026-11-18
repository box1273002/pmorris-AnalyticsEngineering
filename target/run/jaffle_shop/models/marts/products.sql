
  
    
    
    create  table
      "my_project"."main"."products__dbt_tmp"
  
    as (
      with

products as (

    select * from "my_project"."main"."stg_products"

)

select * from products
    );
  
    
  