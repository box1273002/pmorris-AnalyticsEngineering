 -- noqa: Should accept a string instead of a integer
    
    
    truncate table "my_project"."main_raw"."raw_supplies";
    -- dbt seed --
    
          COPY "my_project"."main_raw"."raw_supplies" FROM '/Users/ptolemym/code/uni/analytics-coursework/seeds/raw_supplies.csv' (FORMAT CSV, HEADER TRUE, DELIMITER ',')
        

;
  