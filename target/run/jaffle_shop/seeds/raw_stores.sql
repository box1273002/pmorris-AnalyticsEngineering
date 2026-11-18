 -- noqa: Should accept a string instead of a integer
    
    
    truncate table "my_project"."main_raw"."raw_stores";
    -- dbt seed --
    
          COPY "my_project"."main_raw"."raw_stores" FROM '/Users/ptolemym/code/uni/analytics-coursework/seeds/raw_stores.csv' (FORMAT CSV, HEADER TRUE, DELIMITER ',')
        

;
  