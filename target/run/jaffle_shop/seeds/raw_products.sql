 -- noqa: Should accept a string instead of a integer
    
    
    truncate table "my_project"."main_raw"."raw_products";
    -- dbt seed --
    
          COPY "my_project"."main_raw"."raw_products" FROM '/Users/ptolemym/code/uni/analytics-coursework/seeds/raw_products.csv' (FORMAT CSV, HEADER TRUE, DELIMITER ',')
        

;
  