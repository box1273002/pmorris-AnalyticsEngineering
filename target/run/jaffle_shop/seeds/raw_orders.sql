 -- noqa: Should accept a string instead of a integer
    
    
    truncate table "my_project"."main_raw"."raw_orders";
    -- dbt seed --
    
          COPY "my_project"."main_raw"."raw_orders" FROM '/Users/ptolemym/code/uni/analytics-coursework/seeds/raw_orders.csv' (FORMAT CSV, HEADER TRUE, DELIMITER ',')
        

;
  