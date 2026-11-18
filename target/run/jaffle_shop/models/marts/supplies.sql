
  
    
    
    create  table
      "my_project"."main"."supplies__dbt_tmp"
  
    as (
      with

supplies as (

    select * from "my_project"."main"."stg_supplies"

)

select * from supplies
    );
  
    
  