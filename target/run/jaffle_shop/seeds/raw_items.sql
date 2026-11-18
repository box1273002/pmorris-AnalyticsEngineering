 -- noqa: Should accept a string instead of a integer
    
    
    truncate table "my_project"."main_raw"."raw_items";
    -- dbt seed --
    
          COPY "my_project"."main_raw"."raw_items" FROM '/Users/ptolemym/code/uni/analytics-coursework/seeds/raw_items.csv' (FORMAT CSV, HEADER TRUE, DELIMITER ',')
        

;
  