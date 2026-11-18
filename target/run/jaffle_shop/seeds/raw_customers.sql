 -- noqa: Should accept a string instead of a integer
    
    
    truncate table "my_project"."main_raw"."raw_customers";
    -- dbt seed --
    
          COPY "my_project"."main_raw"."raw_customers" FROM '/Users/ptolemym/code/uni/analytics-coursework/seeds/raw_customers.csv' (FORMAT CSV, HEADER TRUE, DELIMITER ',')
        

;
  