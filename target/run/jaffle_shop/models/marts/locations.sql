
  
    
    
    create  table
      "my_project"."main"."locations__dbt_tmp"
  
    as (
      with

locations as (

    select * from "my_project"."main"."stg_locations"

)

select * from locations
    );
  
    
  