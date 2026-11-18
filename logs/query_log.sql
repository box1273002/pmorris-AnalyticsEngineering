-- created_at: 2026-11-18T10:46:39.953974+00:00
-- finished_at: 2026-11-18T10:46:39.957977+00:00
-- elapsed: 4ms
-- outcome: success
-- dialect: duckdb
-- node_id: not available
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
    select schema_name
    from system.information_schema.schemata
    
    where lower(catalog_name) = '"my_project"'
    
  
  ;

-- created_at: 2026-11-18T10:46:39.959694+00:00
-- finished_at: 2026-11-18T10:46:39.960038+00:00
-- elapsed: 344us
-- outcome: success
-- dialect: duckdb
-- node_id: not available
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
        select type from duckdb_databases()
        where lower(database_name)='my_project'
        and type='sqlite'
    
  ;

-- created_at: 2026-11-18T10:46:39.960238+00:00
-- finished_at: 2026-11-18T10:46:39.960556+00:00
-- elapsed: 318us
-- outcome: success
-- dialect: duckdb
-- node_id: not available
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
    
        create schema if not exists "my_project"."main"
    ;

-- created_at: 2026-11-18T10:46:39.960687+00:00
-- finished_at: 2026-11-18T10:46:39.960837+00:00
-- elapsed: 150us
-- outcome: success
-- dialect: duckdb
-- node_id: not available
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
        select type from duckdb_databases()
        where lower(database_name)='my_project'
        and type='sqlite'
    
  ;

-- created_at: 2026-11-18T10:46:39.960905+00:00
-- finished_at: 2026-11-18T10:46:39.960971+00:00
-- elapsed: 66us
-- outcome: success
-- dialect: duckdb
-- node_id: not available
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
    
        create schema if not exists "my_project"."main_raw"
    ;

-- created_at: 2026-11-18T10:46:39.973950+00:00
-- finished_at: 2026-11-18T10:46:39.976310+00:00
-- elapsed: 2ms
-- outcome: success
-- dialect: duckdb
-- node_id: seed.jaffle_shop.raw_items
-- query_id: not available
-- desc: get_relation > list_relations call
SELECT table_catalog, table_schema, table_name, table_type FROM information_schema.tables WHERE table_schema = 'main_raw' AND lower(table_catalog) = lower('my_project');

-- created_at: 2026-11-18T10:46:39.973869+00:00
-- finished_at: 2026-11-18T10:46:39.976310+00:00
-- elapsed: 2ms
-- outcome: success
-- dialect: duckdb
-- node_id: seed.jaffle_shop.raw_products
-- query_id: not available
-- desc: get_relation > list_relations call
SELECT table_catalog, table_schema, table_name, table_type FROM information_schema.tables WHERE table_schema = 'main_raw' AND lower(table_catalog) = lower('my_project');

-- created_at: 2026-11-18T10:46:39.974102+00:00
-- finished_at: 2026-11-18T10:46:39.976311+00:00
-- elapsed: 2ms
-- outcome: success
-- dialect: duckdb
-- node_id: seed.jaffle_shop.raw_customers
-- query_id: not available
-- desc: get_relation > list_relations call
SELECT table_catalog, table_schema, table_name, table_type FROM information_schema.tables WHERE table_schema = 'main_raw' AND lower(table_catalog) = lower('my_project');

-- created_at: 2026-11-18T10:46:39.973872+00:00
-- finished_at: 2026-11-18T10:46:39.976323+00:00
-- elapsed: 2ms
-- outcome: success
-- dialect: duckdb
-- node_id: seed.jaffle_shop.raw_stores
-- query_id: not available
-- desc: get_relation > list_relations call
SELECT table_catalog, table_schema, table_name, table_type FROM information_schema.tables WHERE table_schema = 'main_raw' AND lower(table_catalog) = lower('my_project');

-- created_at: 2026-11-18T10:46:39.977441+00:00
-- finished_at: 2026-11-18T10:46:39.979144+00:00
-- elapsed: 1ms
-- outcome: success
-- dialect: duckdb
-- node_id: seed.jaffle_shop.raw_items
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "seed.jaffle_shop.raw_items", "profile_name": "jaffle_shop", "target_name": "dev"} */
truncate table "my_project"."main_raw"."raw_items";

-- created_at: 2026-11-18T10:46:39.977816+00:00
-- finished_at: 2026-11-18T10:46:39.979172+00:00
-- elapsed: 1ms
-- outcome: success
-- dialect: duckdb
-- node_id: seed.jaffle_shop.raw_customers
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "seed.jaffle_shop.raw_customers", "profile_name": "jaffle_shop", "target_name": "dev"} */
truncate table "my_project"."main_raw"."raw_customers";

-- created_at: 2026-11-18T10:46:39.977433+00:00
-- finished_at: 2026-11-18T10:46:39.979230+00:00
-- elapsed: 1ms
-- outcome: success
-- dialect: duckdb
-- node_id: seed.jaffle_shop.raw_products
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "seed.jaffle_shop.raw_products", "profile_name": "jaffle_shop", "target_name": "dev"} */
truncate table "my_project"."main_raw"."raw_products";

-- created_at: 2026-11-18T10:46:39.977434+00:00
-- finished_at: 2026-11-18T10:46:39.979240+00:00
-- elapsed: 1ms
-- outcome: success
-- dialect: duckdb
-- node_id: seed.jaffle_shop.raw_stores
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "seed.jaffle_shop.raw_stores", "profile_name": "jaffle_shop", "target_name": "dev"} */
truncate table "my_project"."main_raw"."raw_stores";

-- created_at: 2026-11-18T10:46:39.981331+00:00
-- finished_at: 2026-11-18T10:46:39.985747+00:00
-- elapsed: 4ms
-- outcome: success
-- dialect: duckdb
-- node_id: seed.jaffle_shop.raw_stores
-- query_id: not available
-- desc: add_query adapter call

          COPY "my_project"."main_raw"."raw_stores" FROM '/Users/ptolemym/code/uni/analytics-coursework/seeds/raw_stores.csv' (FORMAT CSV, HEADER TRUE, DELIMITER ',')
        ;

-- created_at: 2026-11-18T10:46:39.981358+00:00
-- finished_at: 2026-11-18T10:46:39.985855+00:00
-- elapsed: 4ms
-- outcome: success
-- dialect: duckdb
-- node_id: seed.jaffle_shop.raw_customers
-- query_id: not available
-- desc: add_query adapter call

          COPY "my_project"."main_raw"."raw_customers" FROM '/Users/ptolemym/code/uni/analytics-coursework/seeds/raw_customers.csv' (FORMAT CSV, HEADER TRUE, DELIMITER ',')
        ;

-- created_at: 2026-11-18T10:46:39.981331+00:00
-- finished_at: 2026-11-18T10:46:39.986100+00:00
-- elapsed: 4ms
-- outcome: success
-- dialect: duckdb
-- node_id: seed.jaffle_shop.raw_products
-- query_id: not available
-- desc: add_query adapter call

          COPY "my_project"."main_raw"."raw_products" FROM '/Users/ptolemym/code/uni/analytics-coursework/seeds/raw_products.csv' (FORMAT CSV, HEADER TRUE, DELIMITER ',')
        ;

-- created_at: 2026-11-18T10:46:39.981349+00:00
-- finished_at: 2026-11-18T10:46:39.986727+00:00
-- elapsed: 5ms
-- outcome: success
-- dialect: duckdb
-- node_id: seed.jaffle_shop.raw_items
-- query_id: not available
-- desc: add_query adapter call

          COPY "my_project"."main_raw"."raw_items" FROM '/Users/ptolemym/code/uni/analytics-coursework/seeds/raw_items.csv' (FORMAT CSV, HEADER TRUE, DELIMITER ',')
        ;

-- created_at: 2026-11-18T10:46:39.988394+00:00
-- finished_at: 2026-11-18T10:46:39.988656+00:00
-- elapsed: 262us
-- outcome: success
-- dialect: duckdb
-- node_id: seed.jaffle_shop.raw_supplies
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "seed.jaffle_shop.raw_supplies", "profile_name": "jaffle_shop", "target_name": "dev"} */
truncate table "my_project"."main_raw"."raw_supplies";

-- created_at: 2026-11-18T10:46:39.989112+00:00
-- finished_at: 2026-11-18T10:46:39.989421+00:00
-- elapsed: 309us
-- outcome: success
-- dialect: duckdb
-- node_id: seed.jaffle_shop.raw_orders
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "seed.jaffle_shop.raw_orders", "profile_name": "jaffle_shop", "target_name": "dev"} */
truncate table "my_project"."main_raw"."raw_orders";

-- created_at: 2026-11-18T10:46:39.989268+00:00
-- finished_at: 2026-11-18T10:46:39.990257+00:00
-- elapsed: 989us
-- outcome: success
-- dialect: duckdb
-- node_id: seed.jaffle_shop.raw_supplies
-- query_id: not available
-- desc: add_query adapter call

          COPY "my_project"."main_raw"."raw_supplies" FROM '/Users/ptolemym/code/uni/analytics-coursework/seeds/raw_supplies.csv' (FORMAT CSV, HEADER TRUE, DELIMITER ',')
        ;

-- created_at: 2026-11-18T10:46:40.004453+00:00
-- finished_at: 2026-11-18T10:46:40.006046+00:00
-- elapsed: 1ms
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.stg_order_items
-- query_id: not available
-- desc: get_relation > list_relations call
SELECT table_catalog, table_schema, table_name, table_type FROM information_schema.tables WHERE table_schema = 'main' AND lower(table_catalog) = lower('my_project');

-- created_at: 2026-11-18T10:46:40.004434+00:00
-- finished_at: 2026-11-18T10:46:40.006125+00:00
-- elapsed: 1ms
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.stg_customers
-- query_id: not available
-- desc: get_relation > list_relations call
SELECT table_catalog, table_schema, table_name, table_type FROM information_schema.tables WHERE table_schema = 'main' AND lower(table_catalog) = lower('my_project');

-- created_at: 2026-11-18T10:46:40.005810+00:00
-- finished_at: 2026-11-18T10:46:40.006343+00:00
-- elapsed: 533us
-- outcome: success
-- dialect: duckdb
-- node_id: unit_test.jaffle_shop.stg_locations.test_does_location_opened_at_trunc_to_date
-- query_id: not available
-- desc: get_column_schema_from_query adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "unit_test.jaffle_shop.stg_locations.test_does_location_opened_at_trunc_to_date", "profile_name": "jaffle_shop", "target_name": "dev"} */
select * from (
        with

source as (

    -- 
    select * from "my_project"."main_raw"."raw_stores"

),

renamed as (

    select

        ----------  ids
        id as location_id,

        ---------- text
        name as location_name,

        ---------- numerics
        tax_rate,

        ---------- timestamps
        cast(opened_at as date) as opened_date

    from source

)

select * from renamed
    ) as __dbt_sbq
    where false
    limit 0
;

-- created_at: 2026-11-18T10:46:40.007201+00:00
-- finished_at: 2026-11-18T10:46:40.007546+00:00
-- elapsed: 345us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.stg_order_items
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.stg_order_items", "profile_name": "jaffle_shop", "target_name": "dev"} */

  
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
;

-- created_at: 2026-11-18T10:46:40.007347+00:00
-- finished_at: 2026-11-18T10:46:40.007615+00:00
-- elapsed: 268us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.stg_customers
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.stg_customers", "profile_name": "jaffle_shop", "target_name": "dev"} */

  
  create view "my_project"."main"."stg_customers__dbt_tmp" as (
    with

source as (

    -- 
    select * from "my_project"."main_raw"."raw_customers"

),

renamed as (

    select

        ----------  ids
        id as customer_id,

        ---------- text
        name as customer_name

    from source

)

select * from renamed
  );
;

-- created_at: 2026-11-18T10:46:40.008263+00:00
-- finished_at: 2026-11-18T10:46:40.008678+00:00
-- elapsed: 415us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.stg_order_items
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.stg_order_items", "profile_name": "jaffle_shop", "target_name": "dev"} */
alter view "my_project"."main"."stg_order_items" rename to "stg_order_items__dbt_backup";

-- created_at: 2026-11-18T10:46:40.008405+00:00
-- finished_at: 2026-11-18T10:46:40.008750+00:00
-- elapsed: 345us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.stg_customers
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.stg_customers", "profile_name": "jaffle_shop", "target_name": "dev"} */
alter view "my_project"."main"."stg_customers" rename to "stg_customers__dbt_backup";

-- created_at: 2026-11-18T10:46:40.009159+00:00
-- finished_at: 2026-11-18T10:46:40.009270+00:00
-- elapsed: 111us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.stg_order_items
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.stg_order_items", "profile_name": "jaffle_shop", "target_name": "dev"} */
alter view "my_project"."main"."stg_order_items__dbt_tmp" rename to "stg_order_items";

-- created_at: 2026-11-18T10:46:40.009246+00:00
-- finished_at: 2026-11-18T10:46:40.009474+00:00
-- elapsed: 228us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.stg_customers
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.stg_customers", "profile_name": "jaffle_shop", "target_name": "dev"} */
alter view "my_project"."main"."stg_customers__dbt_tmp" rename to "stg_customers";

-- created_at: 2026-11-18T10:46:40.010068+00:00
-- finished_at: 2026-11-18T10:46:40.010319+00:00
-- elapsed: 251us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.stg_order_items
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.stg_order_items", "profile_name": "jaffle_shop", "target_name": "dev"} */

      drop view if exists "my_project"."main"."stg_order_items__dbt_backup" cascade
    ;

-- created_at: 2026-11-18T10:46:40.010216+00:00
-- finished_at: 2026-11-18T10:46:40.010416+00:00
-- elapsed: 200us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.stg_customers
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.stg_customers", "profile_name": "jaffle_shop", "target_name": "dev"} */

      drop view if exists "my_project"."main"."stg_customers__dbt_backup" cascade
    ;

-- created_at: 2026-11-18T10:46:40.011006+00:00
-- finished_at: 2026-11-18T10:46:40.011586+00:00
-- elapsed: 580us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.stg_products
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.stg_products", "profile_name": "jaffle_shop", "target_name": "dev"} */

  
  create view "my_project"."main"."stg_products__dbt_tmp" as (
    with

source as (

    -- 
    select * from "my_project"."main_raw"."raw_products"

),

renamed as (

    select

        ----------  ids
        sku as product_id,

        ---------- text
        name as product_name,
        type as product_type,
        description as product_description,


        ---------- numerics
        (price / 100)::numeric(16, 2) as product_price,

        ---------- booleans
        coalesce(type = 'jaffle', false) as is_food_item,

        coalesce(type = 'beverage', false) as is_drink_item

    from source

)

select * from renamed
  );
;

-- created_at: 2026-11-18T10:46:40.011547+00:00
-- finished_at: 2026-11-18T10:46:40.012010+00:00
-- elapsed: 463us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.stg_supplies
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.stg_supplies", "profile_name": "jaffle_shop", "target_name": "dev"} */

  
  create view "my_project"."main"."stg_supplies__dbt_tmp" as (
    with

source as (

    -- 
    select * from "my_project"."main_raw"."raw_supplies"

),

renamed as (

    select

        ----------  ids
        md5(cast(coalesce(cast(id as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(sku as TEXT), '_dbt_utils_surrogate_key_null_') as TEXT)) as supply_uuid,
        id as supply_id,
        sku as product_id,

        ---------- text
        name as supply_name,

        ---------- numerics
        (cost / 100)::numeric(16, 2) as supply_cost,

        ---------- booleans
        perishable as is_perishable_supply

    from source

)

select * from renamed
  );
;

-- created_at: 2026-11-18T10:46:40.012094+00:00
-- finished_at: 2026-11-18T10:46:40.012212+00:00
-- elapsed: 118us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.stg_products
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.stg_products", "profile_name": "jaffle_shop", "target_name": "dev"} */
alter view "my_project"."main"."stg_products" rename to "stg_products__dbt_backup";

-- created_at: 2026-11-18T10:46:40.012531+00:00
-- finished_at: 2026-11-18T10:46:40.012647+00:00
-- elapsed: 116us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.stg_supplies
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.stg_supplies", "profile_name": "jaffle_shop", "target_name": "dev"} */
alter view "my_project"."main"."stg_supplies" rename to "stg_supplies__dbt_backup";

-- created_at: 2026-11-18T10:46:40.012687+00:00
-- finished_at: 2026-11-18T10:46:40.012806+00:00
-- elapsed: 119us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.stg_products
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.stg_products", "profile_name": "jaffle_shop", "target_name": "dev"} */
alter view "my_project"."main"."stg_products__dbt_tmp" rename to "stg_products";

-- created_at: 2026-11-18T10:46:40.013088+00:00
-- finished_at: 2026-11-18T10:46:40.013192+00:00
-- elapsed: 104us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.stg_supplies
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.stg_supplies", "profile_name": "jaffle_shop", "target_name": "dev"} */
alter view "my_project"."main"."stg_supplies__dbt_tmp" rename to "stg_supplies";

-- created_at: 2026-11-18T10:46:40.013878+00:00
-- finished_at: 2026-11-18T10:46:40.013985+00:00
-- elapsed: 107us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.stg_products
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.stg_products", "profile_name": "jaffle_shop", "target_name": "dev"} */

      drop view if exists "my_project"."main"."stg_products__dbt_backup" cascade
    ;

-- created_at: 2026-11-18T10:46:40.011196+00:00
-- finished_at: 2026-11-18T10:46:40.013986+00:00
-- elapsed: 2ms
-- outcome: success
-- dialect: duckdb
-- node_id: unit_test.jaffle_shop.stg_locations.test_does_location_opened_at_trunc_to_date
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "unit_test.jaffle_shop.stg_locations.test_does_location_opened_at_trunc_to_date", "profile_name": "jaffle_shop", "target_name": "dev"} */
-- Build actual result given inputs
WITH
            	my_project_main_raw_raw_stores as (SELECT CAST(1 AS varchar) AS id, CAST('Vice City' AS varchar) AS name, CAST('2016-09-01T00:00:00' AS timestamp) AS opened_at, CAST(0.2 AS double) AS tax_rate
UNION ALL
SELECT CAST(2 AS varchar) AS id, CAST('San Andreas' AS varchar) AS name, CAST('2079-10-27T23:59:59.9999' AS timestamp) AS opened_at, CAST(0.1 AS double) AS tax_rate),
  	my_project_main_stg_locations_expect as (SELECT CAST(1 AS varchar) AS location_id, CAST('Vice City' AS varchar) AS location_name, CAST(0.2 AS double) AS tax_rate, CAST('2016-09-01' AS date) AS opened_date
UNION ALL
SELECT CAST(2 AS varchar) AS location_id, CAST('San Andreas' AS varchar) AS location_name, CAST(0.1 AS double) AS tax_rate, CAST('2079-10-27' AS date) AS opened_date),
  	my_project_main_stg_locations_actual as (with

source as (

    -- 
    select * from my_project_main_raw_raw_stores

),

renamed as (

    select

        ----------  ids
        id as location_id,

        ---------- text
        name as location_name,

        ---------- numerics
        tax_rate,

        ---------- timestamps
        cast(opened_at as date) as opened_date

    from source

)

select * from renamed
)
        SELECT * FROM (
        (SELECT location_id, location_name, tax_rate, opened_date, 'actual' AS actual_or_expected FROM my_project_main_stg_locations_actual)
        UNION ALL
        (SELECT location_id, location_name, tax_rate, opened_date, 'expected' AS actual_or_expected FROM my_project_main_stg_locations_expect)
        ) unit_test_diff
        ORDER BY location_id, location_name, tax_rate, opened_date;

-- created_at: 2026-11-18T10:46:40.014084+00:00
-- finished_at: 2026-11-18T10:46:40.014186+00:00
-- elapsed: 102us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.stg_supplies
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.stg_supplies", "profile_name": "jaffle_shop", "target_name": "dev"} */

      drop view if exists "my_project"."main"."stg_supplies__dbt_backup" cascade
    ;

-- created_at: 2026-11-18T10:46:40.016688+00:00
-- finished_at: 2026-11-18T10:46:40.016890+00:00
-- elapsed: 202us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.stg_locations
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.stg_locations", "profile_name": "jaffle_shop", "target_name": "dev"} */

  
  create view "my_project"."main"."stg_locations__dbt_tmp" as (
    with

source as (

    -- 
    select * from "my_project"."main_raw"."raw_stores"

),

renamed as (

    select

        ----------  ids
        id as location_id,

        ---------- text
        name as location_name,

        ---------- numerics
        tax_rate,

        ---------- timestamps
        cast(opened_at as date) as opened_date

    from source

)

select * from renamed
  );
;

-- created_at: 2026-11-18T10:46:40.016648+00:00
-- finished_at: 2026-11-18T10:46:40.017181+00:00
-- elapsed: 533us
-- outcome: success
-- dialect: duckdb
-- node_id: test.jaffle_shop.not_null_stg_order_items_order_item_id.26a7e2bc35
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.jaffle_shop.not_null_stg_order_items_order_item_id.26a7e2bc35", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select order_item_id
from "my_project"."main"."stg_order_items"
where order_item_id is null



  
  
      
    ) dbt_internal_test;

-- created_at: 2026-11-18T10:46:40.016549+00:00
-- finished_at: 2026-11-18T10:46:40.017190+00:00
-- elapsed: 641us
-- outcome: success
-- dialect: duckdb
-- node_id: test.jaffle_shop.not_null_stg_order_items_order_id.2063801f96
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.jaffle_shop.not_null_stg_order_items_order_id.2063801f96", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select order_id
from "my_project"."main"."stg_order_items"
where order_id is null



  
  
      
    ) dbt_internal_test;

-- created_at: 2026-11-18T10:46:40.018345+00:00
-- finished_at: 2026-11-18T10:46:40.018553+00:00
-- elapsed: 208us
-- outcome: success
-- dialect: duckdb
-- node_id: test.jaffle_shop.not_null_stg_customers_customer_id.e2cfb1f9aa
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.jaffle_shop.not_null_stg_customers_customer_id.e2cfb1f9aa", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select customer_id
from "my_project"."main"."stg_customers"
where customer_id is null



  
  
      
    ) dbt_internal_test;

-- created_at: 2026-11-18T10:46:40.018292+00:00
-- finished_at: 2026-11-18T10:46:40.018672+00:00
-- elapsed: 380us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.stg_locations
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.stg_locations", "profile_name": "jaffle_shop", "target_name": "dev"} */
alter view "my_project"."main"."stg_locations" rename to "stg_locations__dbt_backup";

-- created_at: 2026-11-18T10:46:40.018296+00:00
-- finished_at: 2026-11-18T10:46:40.018813+00:00
-- elapsed: 517us
-- outcome: success
-- dialect: duckdb
-- node_id: test.jaffle_shop.not_null_stg_supplies_supply_uuid.515c6eda6d
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.jaffle_shop.not_null_stg_supplies_supply_uuid.515c6eda6d", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select supply_uuid
from "my_project"."main"."stg_supplies"
where supply_uuid is null



  
  
      
    ) dbt_internal_test;

-- created_at: 2026-11-18T10:46:40.019155+00:00
-- finished_at: 2026-11-18T10:46:40.019269+00:00
-- elapsed: 114us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.stg_locations
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.stg_locations", "profile_name": "jaffle_shop", "target_name": "dev"} */
alter view "my_project"."main"."stg_locations__dbt_tmp" rename to "stg_locations";

-- created_at: 2026-11-18T10:46:40.019989+00:00
-- finished_at: 2026-11-18T10:46:40.020098+00:00
-- elapsed: 109us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.stg_locations
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.stg_locations", "profile_name": "jaffle_shop", "target_name": "dev"} */

      drop view if exists "my_project"."main"."stg_locations__dbt_backup" cascade
    ;

-- created_at: 2026-11-18T10:46:40.019980+00:00
-- finished_at: 2026-11-18T10:46:40.020841+00:00
-- elapsed: 861us
-- outcome: success
-- dialect: duckdb
-- node_id: test.jaffle_shop.not_null_stg_products_product_id.6373b0acf3
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.jaffle_shop.not_null_stg_products_product_id.6373b0acf3", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select product_id
from "my_project"."main"."stg_products"
where product_id is null



  
  
      
    ) dbt_internal_test;

-- created_at: 2026-11-18T10:46:40.020009+00:00
-- finished_at: 2026-11-18T10:46:40.021474+00:00
-- elapsed: 1ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.jaffle_shop.unique_stg_supplies_supply_uuid.c9e3edcfed
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.jaffle_shop.unique_stg_supplies_supply_uuid.c9e3edcfed", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    supply_uuid as unique_field,
    count(*) as n_records

from "my_project"."main"."stg_supplies"
where supply_uuid is not null
group by supply_uuid
having count(*) > 1



  
  
      
    ) dbt_internal_test;

-- created_at: 2026-11-18T10:46:40.021035+00:00
-- finished_at: 2026-11-18T10:46:40.021849+00:00
-- elapsed: 814us
-- outcome: success
-- dialect: duckdb
-- node_id: test.jaffle_shop.unique_stg_products_product_id.7d950a1467
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.jaffle_shop.unique_stg_products_product_id.7d950a1467", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    product_id as unique_field,
    count(*) as n_records

from "my_project"."main"."stg_products"
where product_id is not null
group by product_id
having count(*) > 1



  
  
      
    ) dbt_internal_test;

-- created_at: 2026-11-18T10:46:40.022339+00:00
-- finished_at: 2026-11-18T10:46:40.022838+00:00
-- elapsed: 499us
-- outcome: success
-- dialect: duckdb
-- node_id: test.jaffle_shop.unique_stg_customers_customer_id.c7614daada
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.jaffle_shop.unique_stg_customers_customer_id.c7614daada", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    customer_id as unique_field,
    count(*) as n_records

from "my_project"."main"."stg_customers"
where customer_id is not null
group by customer_id
having count(*) > 1



  
  
      
    ) dbt_internal_test;

-- created_at: 2026-11-18T10:46:40.023879+00:00
-- finished_at: 2026-11-18T10:46:40.025050+00:00
-- elapsed: 1ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.jaffle_shop.unique_stg_order_items_order_item_id.90e333a108
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.jaffle_shop.unique_stg_order_items_order_item_id.90e333a108", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    order_item_id as unique_field,
    count(*) as n_records

from "my_project"."main"."stg_order_items"
where order_item_id is not null
group by order_item_id
having count(*) > 1



  
  
      
    ) dbt_internal_test;

-- created_at: 2026-11-18T10:46:40.024356+00:00
-- finished_at: 2026-11-18T10:46:40.025256+00:00
-- elapsed: 900us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.supplies
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.supplies", "profile_name": "jaffle_shop", "target_name": "dev"} */

  
    
    
    create  table
      "my_project"."main"."supplies__dbt_tmp"
  
    as (
      with

supplies as (

    select * from "my_project"."main"."stg_supplies"

)

select * from supplies
    );
  
    
  ;

-- created_at: 2026-11-18T10:46:40.024411+00:00
-- finished_at: 2026-11-18T10:46:40.025467+00:00
-- elapsed: 1ms
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.products
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.products", "profile_name": "jaffle_shop", "target_name": "dev"} */

  
    
    
    create  table
      "my_project"."main"."products__dbt_tmp"
  
    as (
      with

products as (

    select * from "my_project"."main"."stg_products"

)

select * from products
    );
  
    
  ;

-- created_at: 2026-11-18T10:46:40.025597+00:00
-- finished_at: 2026-11-18T10:46:40.025742+00:00
-- elapsed: 145us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.supplies
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.supplies", "profile_name": "jaffle_shop", "target_name": "dev"} */

    SELECT index_name
    FROM duckdb_indexes()
    WHERE schema_name = 'main'
      AND table_name = 'supplies'
  ;

-- created_at: 2026-11-18T10:46:40.025741+00:00
-- finished_at: 2026-11-18T10:46:40.025927+00:00
-- elapsed: 186us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.products
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.products", "profile_name": "jaffle_shop", "target_name": "dev"} */

    SELECT index_name
    FROM duckdb_indexes()
    WHERE schema_name = 'main'
      AND table_name = 'products'
  ;

-- created_at: 2026-11-18T10:46:40.025978+00:00
-- finished_at: 2026-11-18T10:46:40.026171+00:00
-- elapsed: 193us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.supplies
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.supplies", "profile_name": "jaffle_shop", "target_name": "dev"} */

    SELECT COUNT(*) as remaining_indexes
    FROM duckdb_indexes()
    WHERE schema_name = 'main'
      AND table_name = 'supplies'
  ;

-- created_at: 2026-11-18T10:46:40.026150+00:00
-- finished_at: 2026-11-18T10:46:40.026307+00:00
-- elapsed: 157us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.products
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.products", "profile_name": "jaffle_shop", "target_name": "dev"} */

    SELECT COUNT(*) as remaining_indexes
    FROM duckdb_indexes()
    WHERE schema_name = 'main'
      AND table_name = 'products'
  ;

-- created_at: 2026-11-18T10:46:40.026579+00:00
-- finished_at: 2026-11-18T10:46:40.026714+00:00
-- elapsed: 135us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.supplies
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.supplies", "profile_name": "jaffle_shop", "target_name": "dev"} */
alter table "my_project"."main"."supplies" rename to "supplies__dbt_backup";

-- created_at: 2026-11-18T10:46:40.026696+00:00
-- finished_at: 2026-11-18T10:46:40.026808+00:00
-- elapsed: 112us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.products
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.products", "profile_name": "jaffle_shop", "target_name": "dev"} */
alter table "my_project"."main"."products" rename to "products__dbt_backup";

-- created_at: 2026-11-18T10:46:40.027152+00:00
-- finished_at: 2026-11-18T10:46:40.027260+00:00
-- elapsed: 108us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.supplies
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.supplies", "profile_name": "jaffle_shop", "target_name": "dev"} */
alter table "my_project"."main"."supplies__dbt_tmp" rename to "supplies";

-- created_at: 2026-11-18T10:46:40.027247+00:00
-- finished_at: 2026-11-18T10:46:40.027361+00:00
-- elapsed: 114us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.products
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.products", "profile_name": "jaffle_shop", "target_name": "dev"} */
alter table "my_project"."main"."products__dbt_tmp" rename to "products";

-- created_at: 2026-11-18T10:46:40.027989+00:00
-- finished_at: 2026-11-18T10:46:40.028112+00:00
-- elapsed: 123us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.supplies
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.supplies", "profile_name": "jaffle_shop", "target_name": "dev"} */

      drop table if exists "my_project"."main"."supplies__dbt_backup" cascade
    ;

-- created_at: 2026-11-18T10:46:40.028078+00:00
-- finished_at: 2026-11-18T10:46:40.028213+00:00
-- elapsed: 135us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.products
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.products", "profile_name": "jaffle_shop", "target_name": "dev"} */

      drop table if exists "my_project"."main"."products__dbt_backup" cascade
    ;

-- created_at: 2026-11-18T10:46:40.027514+00:00
-- finished_at: 2026-11-18T10:46:40.028302+00:00
-- elapsed: 788us
-- outcome: success
-- dialect: duckdb
-- node_id: test.jaffle_shop.unique_stg_locations_location_id.2e2fc58ecc
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.jaffle_shop.unique_stg_locations_location_id.2e2fc58ecc", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    location_id as unique_field,
    count(*) as n_records

from "my_project"."main"."stg_locations"
where location_id is not null
group by location_id
having count(*) > 1



  
  
      
    ) dbt_internal_test;

-- created_at: 2026-11-18T10:46:40.029012+00:00
-- finished_at: 2026-11-18T10:46:40.029241+00:00
-- elapsed: 229us
-- outcome: success
-- dialect: duckdb
-- node_id: test.jaffle_shop.not_null_stg_locations_location_id.3d237927d2
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.jaffle_shop.not_null_stg_locations_location_id.3d237927d2", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select location_id
from "my_project"."main"."stg_locations"
where location_id is null



  
  
      
    ) dbt_internal_test;

-- created_at: 2026-11-18T10:46:40.030402+00:00
-- finished_at: 2026-11-18T10:46:40.030704+00:00
-- elapsed: 302us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.locations
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.locations", "profile_name": "jaffle_shop", "target_name": "dev"} */

  
    
    
    create  table
      "my_project"."main"."locations__dbt_tmp"
  
    as (
      with

locations as (

    select * from "my_project"."main"."stg_locations"

)

select * from locations
    );
  
    
  ;

-- created_at: 2026-11-18T10:46:40.030916+00:00
-- finished_at: 2026-11-18T10:46:40.031032+00:00
-- elapsed: 116us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.locations
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.locations", "profile_name": "jaffle_shop", "target_name": "dev"} */

    SELECT index_name
    FROM duckdb_indexes()
    WHERE schema_name = 'main'
      AND table_name = 'locations'
  ;

-- created_at: 2026-11-18T10:46:40.031232+00:00
-- finished_at: 2026-11-18T10:46:40.031392+00:00
-- elapsed: 160us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.locations
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.locations", "profile_name": "jaffle_shop", "target_name": "dev"} */

    SELECT COUNT(*) as remaining_indexes
    FROM duckdb_indexes()
    WHERE schema_name = 'main'
      AND table_name = 'locations'
  ;

-- created_at: 2026-11-18T10:46:40.031775+00:00
-- finished_at: 2026-11-18T10:46:40.031883+00:00
-- elapsed: 108us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.locations
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.locations", "profile_name": "jaffle_shop", "target_name": "dev"} */
alter table "my_project"."main"."locations" rename to "locations__dbt_backup";

-- created_at: 2026-11-18T10:46:40.032247+00:00
-- finished_at: 2026-11-18T10:46:40.032343+00:00
-- elapsed: 96us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.locations
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.locations", "profile_name": "jaffle_shop", "target_name": "dev"} */
alter table "my_project"."main"."locations__dbt_tmp" rename to "locations";

-- created_at: 2026-11-18T10:46:40.032941+00:00
-- finished_at: 2026-11-18T10:46:40.033058+00:00
-- elapsed: 117us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.locations
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.locations", "profile_name": "jaffle_shop", "target_name": "dev"} */

      drop table if exists "my_project"."main"."locations__dbt_backup" cascade
    ;

-- created_at: 2026-11-18T10:46:39.990145+00:00
-- finished_at: 2026-11-18T10:46:40.037293+00:00
-- elapsed: 47ms
-- outcome: success
-- dialect: duckdb
-- node_id: seed.jaffle_shop.raw_orders
-- query_id: not available
-- desc: add_query adapter call

          COPY "my_project"."main_raw"."raw_orders" FROM '/Users/ptolemym/code/uni/analytics-coursework/seeds/raw_orders.csv' (FORMAT CSV, HEADER TRUE, DELIMITER ',')
        ;

-- created_at: 2026-11-18T10:46:40.040095+00:00
-- finished_at: 2026-11-18T10:46:40.040395+00:00
-- elapsed: 300us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.stg_orders
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.stg_orders", "profile_name": "jaffle_shop", "target_name": "dev"} */

  
  create view "my_project"."main"."stg_orders__dbt_tmp" as (
    with

source as (

    -- 
    select * from "my_project"."main_raw"."raw_orders"

),

renamed as (

    select

        ----------  ids
        id as order_id,
        store_id as location_id,
        customer as customer_id,

        ---------- numerics
        subtotal as subtotal_cents,
        tax_paid as tax_paid_cents,
        order_total as order_total_cents,
        (subtotal / 100)::numeric(16, 2) as subtotal,
        (tax_paid / 100)::numeric(16, 2) as tax_paid,
        (order_total / 100)::numeric(16, 2) as order_total,

        ---------- timestamps
        cast(ordered_at as date) as order_date

    from source

)

select * from renamed
  );
;

-- created_at: 2026-11-18T10:46:40.040849+00:00
-- finished_at: 2026-11-18T10:46:40.040973+00:00
-- elapsed: 124us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.stg_orders
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.stg_orders", "profile_name": "jaffle_shop", "target_name": "dev"} */
alter view "my_project"."main"."stg_orders" rename to "stg_orders__dbt_backup";

-- created_at: 2026-11-18T10:46:40.041375+00:00
-- finished_at: 2026-11-18T10:46:40.041488+00:00
-- elapsed: 113us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.stg_orders
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.stg_orders", "profile_name": "jaffle_shop", "target_name": "dev"} */
alter view "my_project"."main"."stg_orders__dbt_tmp" rename to "stg_orders";

-- created_at: 2026-11-18T10:46:40.042104+00:00
-- finished_at: 2026-11-18T10:46:40.042202+00:00
-- elapsed: 98us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.stg_orders
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.stg_orders", "profile_name": "jaffle_shop", "target_name": "dev"} */

      drop view if exists "my_project"."main"."stg_orders__dbt_backup" cascade
    ;

-- created_at: 2026-11-18T10:46:40.043980+00:00
-- finished_at: 2026-11-18T10:46:40.044641+00:00
-- elapsed: 661us
-- outcome: success
-- dialect: duckdb
-- node_id: test.jaffle_shop.unique_stg_orders_order_id.e3b841c71a
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.jaffle_shop.unique_stg_orders_order_id.e3b841c71a", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    order_id as unique_field,
    count(*) as n_records

from "my_project"."main"."stg_orders"
where order_id is not null
group by order_id
having count(*) > 1



  
  
      
    ) dbt_internal_test;

-- created_at: 2026-11-18T10:46:40.044885+00:00
-- finished_at: 2026-11-18T10:46:40.045199+00:00
-- elapsed: 314us
-- outcome: success
-- dialect: duckdb
-- node_id: test.jaffle_shop.not_null_stg_orders_order_id.81cfe2fe64
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.jaffle_shop.not_null_stg_orders_order_id.81cfe2fe64", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select order_id
from "my_project"."main"."stg_orders"
where order_id is null



  
  
      
    ) dbt_internal_test;

-- created_at: 2026-11-18T10:46:40.044798+00:00
-- finished_at: 2026-11-18T10:46:40.045976+00:00
-- elapsed: 1ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.jaffle_shop.dbt_utils_expression_is_true_stg_orders_order_total_tax_paid_subtotal.bfb885d7fc
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.jaffle_shop.dbt_utils_expression_is_true_stg_orders_order_total_tax_paid_subtotal.bfb885d7fc", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  



select
    1
from "my_project"."main"."stg_orders"

where not(order_total - tax_paid = subtotal)


  
  
      
    ) dbt_internal_test;

-- created_at: 2026-11-18T10:46:40.047041+00:00
-- finished_at: 2026-11-18T10:46:40.047259+00:00
-- elapsed: 218us
-- outcome: success
-- dialect: duckdb
-- node_id: unit_test.jaffle_shop.order_items.test_supply_costs_sum_correctly
-- query_id: not available
-- desc: Get table schema
DESCRIBE "my_project"."main"."stg_supplies";

-- created_at: 2026-11-18T10:46:40.047907+00:00
-- finished_at: 2026-11-18T10:46:40.048150+00:00
-- elapsed: 243us
-- outcome: success
-- dialect: duckdb
-- node_id: unit_test.jaffle_shop.order_items.test_supply_costs_sum_correctly
-- query_id: not available
-- desc: Get table schema
DESCRIBE "my_project"."main"."stg_products";

-- created_at: 2026-11-18T10:46:40.046430+00:00
-- finished_at: 2026-11-18T10:46:40.048161+00:00
-- elapsed: 1ms
-- outcome: success
-- dialect: duckdb
-- node_id: test.jaffle_shop.relationships_stg_order_items_order_id__order_id__ref_stg_orders_.dbe9930c54
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.jaffle_shop.relationships_stg_order_items_order_id__order_id__ref_stg_orders_.dbe9930c54", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select order_id as from_field
    from "my_project"."main"."stg_order_items"
    where order_id is not null
),

parent as (
    select order_id as to_field
    from "my_project"."main"."stg_orders"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
      
    ) dbt_internal_test;

-- created_at: 2026-11-18T10:46:40.048217+00:00
-- finished_at: 2026-11-18T10:46:40.048339+00:00
-- elapsed: 122us
-- outcome: success
-- dialect: duckdb
-- node_id: unit_test.jaffle_shop.order_items.test_supply_costs_sum_correctly
-- query_id: not available
-- desc: Get table schema
DESCRIBE "my_project"."main"."stg_order_items";

-- created_at: 2026-11-18T10:46:40.048382+00:00
-- finished_at: 2026-11-18T10:46:40.048596+00:00
-- elapsed: 214us
-- outcome: success
-- dialect: duckdb
-- node_id: unit_test.jaffle_shop.order_items.test_supply_costs_sum_correctly
-- query_id: not available
-- desc: Get table schema
DESCRIBE "my_project"."main"."stg_orders";

-- created_at: 2026-11-18T10:46:40.049907+00:00
-- finished_at: 2026-11-18T10:46:40.050475+00:00
-- elapsed: 568us
-- outcome: success
-- dialect: duckdb
-- node_id: unit_test.jaffle_shop.order_items.test_supply_costs_sum_correctly
-- query_id: not available
-- desc: get_column_schema_from_query adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "unit_test.jaffle_shop.order_items.test_supply_costs_sum_correctly", "profile_name": "jaffle_shop", "target_name": "dev"} */
select * from (
        with

order_items as (

    select * from "my_project"."main"."stg_order_items"

),


orders as (

    select * from "my_project"."main"."stg_orders"

),

products as (

    select * from "my_project"."main"."stg_products"

),

supplies as (

    select * from "my_project"."main"."stg_supplies"

),

order_supplies_summary as (

    select
        product_id,

        sum(supply_cost) as supply_cost

    from supplies

    group by 1

),

joined as (

    select
        order_items.*,

        orders.order_date,

        products.product_name,
        products.product_price,
        products.is_food_item,
        products.is_drink_item,

        order_supplies_summary.supply_cost

    from order_items

    left join orders on order_items.order_id = orders.order_id

    left join products on order_items.product_id = products.product_id

    left join order_supplies_summary
        on order_items.product_id = order_supplies_summary.product_id

)

select * from joined
    ) as __dbt_sbq
    where false
    limit 0
;

-- created_at: 2026-11-18T10:46:40.051349+00:00
-- finished_at: 2026-11-18T10:46:40.053270+00:00
-- elapsed: 1ms
-- outcome: success
-- dialect: duckdb
-- node_id: unit_test.jaffle_shop.order_items.test_supply_costs_sum_correctly
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "unit_test.jaffle_shop.order_items.test_supply_costs_sum_correctly", "profile_name": "jaffle_shop", "target_name": "dev"} */
-- Build actual result given inputs
WITH
            	my_project_main_stg_supplies as (SELECT CAST(NULL AS varchar) AS supply_uuid, CAST(NULL AS varchar) AS supply_id, CAST(1 AS varchar) AS product_id, CAST(NULL AS varchar) AS supply_name, CAST(4.5 AS decimal(16, 2)) AS supply_cost, CAST(NULL AS boolean) AS is_perishable_supply
UNION ALL
SELECT CAST(NULL AS varchar) AS supply_uuid, CAST(NULL AS varchar) AS supply_id, CAST(2 AS varchar) AS product_id, CAST(NULL AS varchar) AS supply_name, CAST(3.5 AS decimal(16, 2)) AS supply_cost, CAST(NULL AS boolean) AS is_perishable_supply
UNION ALL
SELECT CAST(NULL AS varchar) AS supply_uuid, CAST(NULL AS varchar) AS supply_id, CAST(2 AS varchar) AS product_id, CAST(NULL AS varchar) AS supply_name, CAST(5.0 AS decimal(16, 2)) AS supply_cost, CAST(NULL AS boolean) AS is_perishable_supply),
  	my_project_main_stg_products as (SELECT CAST(1 AS varchar) AS product_id, CAST(NULL AS varchar) AS product_name, CAST(NULL AS varchar) AS product_type, CAST(NULL AS varchar) AS product_description, CAST(NULL AS decimal(16, 2)) AS product_price, CAST(NULL AS boolean) AS is_food_item, CAST(NULL AS boolean) AS is_drink_item
UNION ALL
SELECT CAST(2 AS varchar) AS product_id, CAST(NULL AS varchar) AS product_name, CAST(NULL AS varchar) AS product_type, CAST(NULL AS varchar) AS product_description, CAST(NULL AS decimal(16, 2)) AS product_price, CAST(NULL AS boolean) AS is_food_item, CAST(NULL AS boolean) AS is_drink_item),
  	my_project_main_stg_order_items as (SELECT CAST(NULL AS varchar) AS order_item_id, CAST(1 AS varchar) AS order_id, CAST(1 AS varchar) AS product_id
UNION ALL
SELECT CAST(NULL AS varchar) AS order_item_id, CAST(2 AS varchar) AS order_id, CAST(2 AS varchar) AS product_id
UNION ALL
SELECT CAST(NULL AS varchar) AS order_item_id, CAST(2 AS varchar) AS order_id, CAST(2 AS varchar) AS product_id),
  	my_project_main_stg_orders as (SELECT CAST(1 AS varchar) AS order_id, CAST(NULL AS varchar) AS location_id, CAST(NULL AS varchar) AS customer_id, CAST(NULL AS bigint) AS subtotal_cents, CAST(NULL AS bigint) AS tax_paid_cents, CAST(NULL AS bigint) AS order_total_cents, CAST(NULL AS decimal(16, 2)) AS subtotal, CAST(NULL AS decimal(16, 2)) AS tax_paid, CAST(NULL AS decimal(16, 2)) AS order_total, CAST(NULL AS date) AS order_date
UNION ALL
SELECT CAST(2 AS varchar) AS order_id, CAST(NULL AS varchar) AS location_id, CAST(NULL AS varchar) AS customer_id, CAST(NULL AS bigint) AS subtotal_cents, CAST(NULL AS bigint) AS tax_paid_cents, CAST(NULL AS bigint) AS order_total_cents, CAST(NULL AS decimal(16, 2)) AS subtotal, CAST(NULL AS decimal(16, 2)) AS tax_paid, CAST(NULL AS decimal(16, 2)) AS order_total, CAST(NULL AS date) AS order_date),
  	my_project_main_order_items_expect as (SELECT CAST(NULL AS varchar) AS order_item_id, CAST(1 AS varchar) AS order_id, CAST(1 AS varchar) AS product_id, CAST(NULL AS date) AS order_date, CAST(NULL AS varchar) AS product_name, CAST(NULL AS decimal(16, 2)) AS product_price, CAST(NULL AS boolean) AS is_food_item, CAST(NULL AS boolean) AS is_drink_item, CAST(4.5 AS decimal(38, 2)) AS supply_cost
UNION ALL
SELECT CAST(NULL AS varchar) AS order_item_id, CAST(2 AS varchar) AS order_id, CAST(2 AS varchar) AS product_id, CAST(NULL AS date) AS order_date, CAST(NULL AS varchar) AS product_name, CAST(NULL AS decimal(16, 2)) AS product_price, CAST(NULL AS boolean) AS is_food_item, CAST(NULL AS boolean) AS is_drink_item, CAST(8.5 AS decimal(38, 2)) AS supply_cost
UNION ALL
SELECT CAST(NULL AS varchar) AS order_item_id, CAST(2 AS varchar) AS order_id, CAST(2 AS varchar) AS product_id, CAST(NULL AS date) AS order_date, CAST(NULL AS varchar) AS product_name, CAST(NULL AS decimal(16, 2)) AS product_price, CAST(NULL AS boolean) AS is_food_item, CAST(NULL AS boolean) AS is_drink_item, CAST(8.5 AS decimal(38, 2)) AS supply_cost),
  	my_project_main_order_items_actual as (with

order_items as (

    select * from my_project_main_stg_order_items

),


orders as (

    select * from my_project_main_stg_orders

),

products as (

    select * from my_project_main_stg_products

),

supplies as (

    select * from my_project_main_stg_supplies

),

order_supplies_summary as (

    select
        product_id,

        sum(supply_cost) as supply_cost

    from supplies

    group by 1

),

joined as (

    select
        order_items.*,

        orders.order_date,

        products.product_name,
        products.product_price,
        products.is_food_item,
        products.is_drink_item,

        order_supplies_summary.supply_cost

    from order_items

    left join orders on order_items.order_id = orders.order_id

    left join products on order_items.product_id = products.product_id

    left join order_supplies_summary
        on order_items.product_id = order_supplies_summary.product_id

)

select * from joined
)
        SELECT * FROM (
        (SELECT order_id, product_id, supply_cost, 'actual' AS actual_or_expected FROM my_project_main_order_items_actual)
        UNION ALL
        (SELECT order_id, product_id, supply_cost, 'expected' AS actual_or_expected FROM my_project_main_order_items_expect)
        ) unit_test_diff
        ORDER BY order_id, product_id, supply_cost;

-- created_at: 2026-11-18T10:46:40.054706+00:00
-- finished_at: 2026-11-18T10:46:40.056582+00:00
-- elapsed: 1ms
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.order_items
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.order_items", "profile_name": "jaffle_shop", "target_name": "dev"} */

  
    
    
    create  table
      "my_project"."main"."order_items__dbt_tmp"
  
    as (
      with

order_items as (

    select * from "my_project"."main"."stg_order_items"

),


orders as (

    select * from "my_project"."main"."stg_orders"

),

products as (

    select * from "my_project"."main"."stg_products"

),

supplies as (

    select * from "my_project"."main"."stg_supplies"

),

order_supplies_summary as (

    select
        product_id,

        sum(supply_cost) as supply_cost

    from supplies

    group by 1

),

joined as (

    select
        order_items.*,

        orders.order_date,

        products.product_name,
        products.product_price,
        products.is_food_item,
        products.is_drink_item,

        order_supplies_summary.supply_cost

    from order_items

    left join orders on order_items.order_id = orders.order_id

    left join products on order_items.product_id = products.product_id

    left join order_supplies_summary
        on order_items.product_id = order_supplies_summary.product_id

)

select * from joined
    );
  
    
  ;

-- created_at: 2026-11-18T10:46:40.056865+00:00
-- finished_at: 2026-11-18T10:46:40.056995+00:00
-- elapsed: 130us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.order_items
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.order_items", "profile_name": "jaffle_shop", "target_name": "dev"} */

    SELECT index_name
    FROM duckdb_indexes()
    WHERE schema_name = 'main'
      AND table_name = 'order_items'
  ;

-- created_at: 2026-11-18T10:46:40.057240+00:00
-- finished_at: 2026-11-18T10:46:40.057369+00:00
-- elapsed: 129us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.order_items
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.order_items", "profile_name": "jaffle_shop", "target_name": "dev"} */

    SELECT COUNT(*) as remaining_indexes
    FROM duckdb_indexes()
    WHERE schema_name = 'main'
      AND table_name = 'order_items'
  ;

-- created_at: 2026-11-18T10:46:40.057851+00:00
-- finished_at: 2026-11-18T10:46:40.057972+00:00
-- elapsed: 121us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.order_items
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.order_items", "profile_name": "jaffle_shop", "target_name": "dev"} */
alter table "my_project"."main"."order_items" rename to "order_items__dbt_backup";

-- created_at: 2026-11-18T10:46:40.058431+00:00
-- finished_at: 2026-11-18T10:46:40.058560+00:00
-- elapsed: 129us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.order_items
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.order_items", "profile_name": "jaffle_shop", "target_name": "dev"} */
alter table "my_project"."main"."order_items__dbt_tmp" rename to "order_items";

-- created_at: 2026-11-18T10:46:40.059303+00:00
-- finished_at: 2026-11-18T10:46:40.059427+00:00
-- elapsed: 124us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.order_items
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.order_items", "profile_name": "jaffle_shop", "target_name": "dev"} */

      drop table if exists "my_project"."main"."order_items__dbt_backup" cascade
    ;

-- created_at: 2026-11-18T10:46:40.060991+00:00
-- finished_at: 2026-11-18T10:46:40.061202+00:00
-- elapsed: 211us
-- outcome: success
-- dialect: duckdb
-- node_id: test.jaffle_shop.not_null_order_items_order_item_id.c6fda366bd
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.jaffle_shop.not_null_order_items_order_item_id.c6fda366bd", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select order_item_id
from "my_project"."main"."order_items"
where order_item_id is null



  
  
      
    ) dbt_internal_test;

-- created_at: 2026-11-18T10:46:40.061050+00:00
-- finished_at: 2026-11-18T10:46:40.061456+00:00
-- elapsed: 406us
-- outcome: success
-- dialect: duckdb
-- node_id: test.jaffle_shop.unique_order_items_order_item_id.7d0a7e900a
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.jaffle_shop.unique_order_items_order_item_id.7d0a7e900a", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    order_item_id as unique_field,
    count(*) as n_records

from "my_project"."main"."order_items"
where order_item_id is not null
group by order_item_id
having count(*) > 1



  
  
      
    ) dbt_internal_test;

-- created_at: 2026-11-18T10:46:40.062635+00:00
-- finished_at: 2026-11-18T10:46:40.062770+00:00
-- elapsed: 135us
-- outcome: success
-- dialect: duckdb
-- node_id: unit_test.jaffle_shop.orders.test_order_items_compute_to_bools_correctly
-- query_id: not available
-- desc: Get table schema
DESCRIBE "my_project"."main"."order_items";

-- created_at: 2026-11-18T10:46:40.063508+00:00
-- finished_at: 2026-11-18T10:46:40.064464+00:00
-- elapsed: 956us
-- outcome: success
-- dialect: duckdb
-- node_id: unit_test.jaffle_shop.orders.test_order_items_compute_to_bools_correctly
-- query_id: not available
-- desc: get_column_schema_from_query adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "unit_test.jaffle_shop.orders.test_order_items_compute_to_bools_correctly", "profile_name": "jaffle_shop", "target_name": "dev"} */
select * from (
        with

orders as (

    select * from "my_project"."main"."stg_orders"

),

order_items as (

    select * from "my_project"."main"."order_items"

),

order_items_summary as (

    select
        order_id,

        sum(supply_cost) as order_cost,
        sum(product_price) as order_items_subtotal,
        count(order_item_id) as count_order_items,
        
        -- Try switching these from 'sum' to 'count' and then run 'dbt test'
        sum(
            case
                when is_food_item then 1
                else 0
            end
        ) as count_food_items,
        sum(
            case
                when is_drink_item then 1
                else 0
            end
        ) as count_drink_items

    from order_items

    group by 1

),

compute_booleans as (

    select
        orders.*,

        order_items_summary.order_cost,
        order_items_summary.order_items_subtotal,
        order_items_summary.count_food_items,
        order_items_summary.count_drink_items,
        order_items_summary.count_order_items,
        order_items_summary.count_food_items > 0 as is_food_order,
        order_items_summary.count_drink_items > 0 as is_drink_order

    from orders

    left join
        order_items_summary
        on orders.order_id = order_items_summary.order_id

),

customer_order_count as (

    select
        *,

        row_number() over (
            partition by customer_id
            order by order_date asc
        ) as customer_order_number

    from compute_booleans

)

select * from customer_order_count
    ) as __dbt_sbq
    where false
    limit 0
;

-- created_at: 2026-11-18T10:46:40.065318+00:00
-- finished_at: 2026-11-18T10:46:40.068413+00:00
-- elapsed: 3ms
-- outcome: success
-- dialect: duckdb
-- node_id: unit_test.jaffle_shop.orders.test_order_items_compute_to_bools_correctly
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "unit_test.jaffle_shop.orders.test_order_items_compute_to_bools_correctly", "profile_name": "jaffle_shop", "target_name": "dev"} */
-- Build actual result given inputs
WITH
            	my_project_main_order_items as (SELECT CAST(1 AS varchar) AS order_item_id, CAST(1 AS varchar) AS order_id, CAST(NULL AS varchar) AS product_id, CAST(NULL AS date) AS order_date, CAST(NULL AS varchar) AS product_name, CAST(NULL AS decimal(16, 2)) AS product_price, CAST(true AS boolean) AS is_food_item, CAST(false AS boolean) AS is_drink_item, CAST(NULL AS decimal(38, 2)) AS supply_cost
UNION ALL
SELECT CAST(2 AS varchar) AS order_item_id, CAST(1 AS varchar) AS order_id, CAST(NULL AS varchar) AS product_id, CAST(NULL AS date) AS order_date, CAST(NULL AS varchar) AS product_name, CAST(NULL AS decimal(16, 2)) AS product_price, CAST(false AS boolean) AS is_food_item, CAST(true AS boolean) AS is_drink_item, CAST(NULL AS decimal(38, 2)) AS supply_cost
UNION ALL
SELECT CAST(3 AS varchar) AS order_item_id, CAST(2 AS varchar) AS order_id, CAST(NULL AS varchar) AS product_id, CAST(NULL AS date) AS order_date, CAST(NULL AS varchar) AS product_name, CAST(NULL AS decimal(16, 2)) AS product_price, CAST(true AS boolean) AS is_food_item, CAST(false AS boolean) AS is_drink_item, CAST(NULL AS decimal(38, 2)) AS supply_cost),
  	my_project_main_stg_orders as (SELECT CAST(1 AS varchar) AS order_id, CAST(NULL AS varchar) AS location_id, CAST(NULL AS varchar) AS customer_id, CAST(NULL AS bigint) AS subtotal_cents, CAST(NULL AS bigint) AS tax_paid_cents, CAST(NULL AS bigint) AS order_total_cents, CAST(NULL AS decimal(16, 2)) AS subtotal, CAST(NULL AS decimal(16, 2)) AS tax_paid, CAST(NULL AS decimal(16, 2)) AS order_total, CAST(NULL AS date) AS order_date
UNION ALL
SELECT CAST(2 AS varchar) AS order_id, CAST(NULL AS varchar) AS location_id, CAST(NULL AS varchar) AS customer_id, CAST(NULL AS bigint) AS subtotal_cents, CAST(NULL AS bigint) AS tax_paid_cents, CAST(NULL AS bigint) AS order_total_cents, CAST(NULL AS decimal(16, 2)) AS subtotal, CAST(NULL AS decimal(16, 2)) AS tax_paid, CAST(NULL AS decimal(16, 2)) AS order_total, CAST(NULL AS date) AS order_date),
  	my_project_main_orders_expect as (SELECT CAST(1 AS varchar) AS order_id, CAST(NULL AS varchar) AS location_id, CAST(NULL AS varchar) AS customer_id, CAST(NULL AS bigint) AS subtotal_cents, CAST(NULL AS bigint) AS tax_paid_cents, CAST(NULL AS bigint) AS order_total_cents, CAST(NULL AS decimal(16, 2)) AS subtotal, CAST(NULL AS decimal(16, 2)) AS tax_paid, CAST(NULL AS decimal(16, 2)) AS order_total, CAST(NULL AS date) AS order_date, CAST(NULL AS decimal(38, 2)) AS order_cost, CAST(NULL AS decimal(38, 2)) AS order_items_subtotal, CAST(1 AS decimal(38, 0)) AS count_food_items, CAST(1 AS decimal(38, 0)) AS count_drink_items, CAST(NULL AS bigint) AS count_order_items, CAST(true AS boolean) AS is_food_order, CAST(true AS boolean) AS is_drink_order, CAST(NULL AS bigint) AS customer_order_number
UNION ALL
SELECT CAST(2 AS varchar) AS order_id, CAST(NULL AS varchar) AS location_id, CAST(NULL AS varchar) AS customer_id, CAST(NULL AS bigint) AS subtotal_cents, CAST(NULL AS bigint) AS tax_paid_cents, CAST(NULL AS bigint) AS order_total_cents, CAST(NULL AS decimal(16, 2)) AS subtotal, CAST(NULL AS decimal(16, 2)) AS tax_paid, CAST(NULL AS decimal(16, 2)) AS order_total, CAST(NULL AS date) AS order_date, CAST(NULL AS decimal(38, 2)) AS order_cost, CAST(NULL AS decimal(38, 2)) AS order_items_subtotal, CAST(1 AS decimal(38, 0)) AS count_food_items, CAST(0 AS decimal(38, 0)) AS count_drink_items, CAST(NULL AS bigint) AS count_order_items, CAST(true AS boolean) AS is_food_order, CAST(false AS boolean) AS is_drink_order, CAST(NULL AS bigint) AS customer_order_number),
  	my_project_main_orders_actual as (with

orders as (

    select * from my_project_main_stg_orders

),

order_items as (

    select * from my_project_main_order_items

),

order_items_summary as (

    select
        order_id,

        sum(supply_cost) as order_cost,
        sum(product_price) as order_items_subtotal,
        count(order_item_id) as count_order_items,
        
        -- Try switching these from 'sum' to 'count' and then run 'dbt test'
        sum(
            case
                when is_food_item then 1
                else 0
            end
        ) as count_food_items,
        sum(
            case
                when is_drink_item then 1
                else 0
            end
        ) as count_drink_items

    from order_items

    group by 1

),

compute_booleans as (

    select
        orders.*,

        order_items_summary.order_cost,
        order_items_summary.order_items_subtotal,
        order_items_summary.count_food_items,
        order_items_summary.count_drink_items,
        order_items_summary.count_order_items,
        order_items_summary.count_food_items > 0 as is_food_order,
        order_items_summary.count_drink_items > 0 as is_drink_order

    from orders

    left join
        order_items_summary
        on orders.order_id = order_items_summary.order_id

),

customer_order_count as (

    select
        *,

        row_number() over (
            partition by customer_id
            order by order_date asc
        ) as customer_order_number

    from compute_booleans

)

select * from customer_order_count
)
        SELECT * FROM (
        (SELECT order_id, count_food_items, count_drink_items, is_food_order, is_drink_order, 'actual' AS actual_or_expected FROM my_project_main_orders_actual)
        UNION ALL
        (SELECT order_id, count_food_items, count_drink_items, is_food_order, is_drink_order, 'expected' AS actual_or_expected FROM my_project_main_orders_expect)
        ) unit_test_diff
        ORDER BY order_id, count_food_items, count_drink_items, is_food_order, is_drink_order;

-- created_at: 2026-11-18T10:46:40.069967+00:00
-- finished_at: 2026-11-18T10:46:40.073207+00:00
-- elapsed: 3ms
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.orders
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.orders", "profile_name": "jaffle_shop", "target_name": "dev"} */

  
    
    
    create  table
      "my_project"."main"."orders__dbt_tmp"
  
    as (
      with

orders as (

    select * from "my_project"."main"."stg_orders"

),

order_items as (

    select * from "my_project"."main"."order_items"

),

order_items_summary as (

    select
        order_id,

        sum(supply_cost) as order_cost,
        sum(product_price) as order_items_subtotal,
        count(order_item_id) as count_order_items,
        
        -- Try switching these from 'sum' to 'count' and then run 'dbt test'
        sum(
            case
                when is_food_item then 1
                else 0
            end
        ) as count_food_items,
        sum(
            case
                when is_drink_item then 1
                else 0
            end
        ) as count_drink_items

    from order_items

    group by 1

),

compute_booleans as (

    select
        orders.*,

        order_items_summary.order_cost,
        order_items_summary.order_items_subtotal,
        order_items_summary.count_food_items,
        order_items_summary.count_drink_items,
        order_items_summary.count_order_items,
        order_items_summary.count_food_items > 0 as is_food_order,
        order_items_summary.count_drink_items > 0 as is_drink_order

    from orders

    left join
        order_items_summary
        on orders.order_id = order_items_summary.order_id

),

customer_order_count as (

    select
        *,

        row_number() over (
            partition by customer_id
            order by order_date asc
        ) as customer_order_number

    from compute_booleans

)

select * from customer_order_count
    );
  
    
  ;

-- created_at: 2026-11-18T10:46:40.073575+00:00
-- finished_at: 2026-11-18T10:46:40.073732+00:00
-- elapsed: 157us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.orders
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.orders", "profile_name": "jaffle_shop", "target_name": "dev"} */

    SELECT index_name
    FROM duckdb_indexes()
    WHERE schema_name = 'main'
      AND table_name = 'orders'
  ;

-- created_at: 2026-11-18T10:46:40.074016+00:00
-- finished_at: 2026-11-18T10:46:40.074158+00:00
-- elapsed: 142us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.orders
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.orders", "profile_name": "jaffle_shop", "target_name": "dev"} */

    SELECT COUNT(*) as remaining_indexes
    FROM duckdb_indexes()
    WHERE schema_name = 'main'
      AND table_name = 'orders'
  ;

-- created_at: 2026-11-18T10:46:40.074707+00:00
-- finished_at: 2026-11-18T10:46:40.074836+00:00
-- elapsed: 129us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.orders
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.orders", "profile_name": "jaffle_shop", "target_name": "dev"} */
alter table "my_project"."main"."orders" rename to "orders__dbt_backup";

-- created_at: 2026-11-18T10:46:40.075349+00:00
-- finished_at: 2026-11-18T10:46:40.075454+00:00
-- elapsed: 105us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.orders
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.orders", "profile_name": "jaffle_shop", "target_name": "dev"} */
alter table "my_project"."main"."orders__dbt_tmp" rename to "orders";

-- created_at: 2026-11-18T10:46:40.076277+00:00
-- finished_at: 2026-11-18T10:46:40.076411+00:00
-- elapsed: 134us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.orders
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.orders", "profile_name": "jaffle_shop", "target_name": "dev"} */

      drop table if exists "my_project"."main"."orders__dbt_backup" cascade
    ;

-- created_at: 2026-11-18T10:46:40.078271+00:00
-- finished_at: 2026-11-18T10:46:40.078492+00:00
-- elapsed: 221us
-- outcome: success
-- dialect: duckdb
-- node_id: test.jaffle_shop.not_null_orders_order_id.cf6c17daed
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.jaffle_shop.not_null_orders_order_id.cf6c17daed", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select order_id
from "my_project"."main"."orders"
where order_id is null



  
  
      
    ) dbt_internal_test;

-- created_at: 2026-11-18T10:46:40.078589+00:00
-- finished_at: 2026-11-18T10:46:40.078798+00:00
-- elapsed: 209us
-- outcome: success
-- dialect: duckdb
-- node_id: test.jaffle_shop.dbt_utils_expression_is_true_orders_order_items_subtotal_subtotal.b1416e07ec
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.jaffle_shop.dbt_utils_expression_is_true_orders_order_items_subtotal_subtotal.b1416e07ec", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  



select
    1
from "my_project"."main"."orders"

where not(order_items_subtotal = subtotal)


  
  
      
    ) dbt_internal_test;

-- created_at: 2026-11-18T10:46:40.078528+00:00
-- finished_at: 2026-11-18T10:46:40.078963+00:00
-- elapsed: 435us
-- outcome: success
-- dialect: duckdb
-- node_id: test.jaffle_shop.relationships_order_items_order_id__order_id__ref_orders_.a799023ee8
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.jaffle_shop.relationships_order_items_order_id__order_id__ref_orders_.a799023ee8", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select order_id as from_field
    from "my_project"."main"."order_items"
    where order_id is not null
),

parent as (
    select order_id as to_field
    from "my_project"."main"."orders"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
      
    ) dbt_internal_test;

-- created_at: 2026-11-18T10:46:40.078739+00:00
-- finished_at: 2026-11-18T10:46:40.079201+00:00
-- elapsed: 462us
-- outcome: success
-- dialect: duckdb
-- node_id: test.jaffle_shop.unique_orders_order_id.fed79b3a6e
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.jaffle_shop.unique_orders_order_id.fed79b3a6e", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    order_id as unique_field,
    count(*) as n_records

from "my_project"."main"."orders"
where order_id is not null
group by order_id
having count(*) > 1



  
  
      
    ) dbt_internal_test;

-- created_at: 2026-11-18T10:46:40.079425+00:00
-- finished_at: 2026-11-18T10:46:40.079904+00:00
-- elapsed: 479us
-- outcome: success
-- dialect: duckdb
-- node_id: test.jaffle_shop.relationships_orders_customer_id__customer_id__ref_stg_customers_.918495ce16
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.jaffle_shop.relationships_orders_customer_id__customer_id__ref_stg_customers_.918495ce16", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select customer_id as from_field
    from "my_project"."main"."orders"
    where customer_id is not null
),

parent as (
    select customer_id as to_field
    from "my_project"."main"."stg_customers"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
      
    ) dbt_internal_test;

-- created_at: 2026-11-18T10:46:40.079806+00:00
-- finished_at: 2026-11-18T10:46:40.080082+00:00
-- elapsed: 276us
-- outcome: success
-- dialect: duckdb
-- node_id: test.jaffle_shop.dbt_utils_expression_is_true_orders_order_total_subtotal_tax_paid.2aba85df92
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.jaffle_shop.dbt_utils_expression_is_true_orders_order_total_subtotal_tax_paid.2aba85df92", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  



select
    1
from "my_project"."main"."orders"

where not(order_total = subtotal + tax_paid)


  
  
      
    ) dbt_internal_test;

-- created_at: 2026-11-18T10:46:40.081772+00:00
-- finished_at: 2026-11-18T10:46:40.083572+00:00
-- elapsed: 1ms
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.customers
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.customers", "profile_name": "jaffle_shop", "target_name": "dev"} */

  
    
    
    create  table
      "my_project"."main"."customers__dbt_tmp"
  
    as (
      with

customers as (

    select * from "my_project"."main"."stg_customers"

),

orders as (

    select * from "my_project"."main"."orders"

),

customer_orders_summary as (

    select
        orders.customer_id,

        count(distinct orders.order_id) as count_lifetime_orders,
        count(distinct orders.order_id) > 1 as is_repeat_buyer,
        min(orders.order_date) as first_order_date,
        max(orders.order_date) as last_order_date,
        sum(orders.subtotal) as lifetime_spend_pretax,
        sum(orders.tax_paid) as lifetime_tax_paid,
        sum(orders.order_total) as lifetime_spend

    from orders

    group by 1

),

joined as (

    select
        customers.*,

        customer_orders_summary.count_lifetime_orders,
        customer_orders_summary.first_order_date,
        customer_orders_summary.last_order_date,
        customer_orders_summary.lifetime_spend_pretax,
        customer_orders_summary.lifetime_tax_paid,
        customer_orders_summary.lifetime_spend,

        case
            when customer_orders_summary.is_repeat_buyer then 'returning'
            else 'new'
        end as customer_type

    from customers

    left join customer_orders_summary
        on customers.customer_id = customer_orders_summary.customer_id

)

select * from joined
    );
  
    
  ;

-- created_at: 2026-11-18T10:46:40.083917+00:00
-- finished_at: 2026-11-18T10:46:40.084047+00:00
-- elapsed: 130us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.customers
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.customers", "profile_name": "jaffle_shop", "target_name": "dev"} */

    SELECT index_name
    FROM duckdb_indexes()
    WHERE schema_name = 'main'
      AND table_name = 'customers'
  ;

-- created_at: 2026-11-18T10:46:40.084340+00:00
-- finished_at: 2026-11-18T10:46:40.084473+00:00
-- elapsed: 133us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.customers
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.customers", "profile_name": "jaffle_shop", "target_name": "dev"} */

    SELECT COUNT(*) as remaining_indexes
    FROM duckdb_indexes()
    WHERE schema_name = 'main'
      AND table_name = 'customers'
  ;

-- created_at: 2026-11-18T10:46:40.085045+00:00
-- finished_at: 2026-11-18T10:46:40.085172+00:00
-- elapsed: 127us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.customers
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.customers", "profile_name": "jaffle_shop", "target_name": "dev"} */
alter table "my_project"."main"."customers" rename to "customers__dbt_backup";

-- created_at: 2026-11-18T10:46:40.085729+00:00
-- finished_at: 2026-11-18T10:46:40.085835+00:00
-- elapsed: 106us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.customers
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.customers", "profile_name": "jaffle_shop", "target_name": "dev"} */
alter table "my_project"."main"."customers__dbt_tmp" rename to "customers";

-- created_at: 2026-11-18T10:46:40.086770+00:00
-- finished_at: 2026-11-18T10:46:40.086903+00:00
-- elapsed: 133us
-- outcome: success
-- dialect: duckdb
-- node_id: model.jaffle_shop.customers
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.jaffle_shop.customers", "profile_name": "jaffle_shop", "target_name": "dev"} */

      drop table if exists "my_project"."main"."customers__dbt_backup" cascade
    ;

-- created_at: 2026-11-18T10:46:40.088625+00:00
-- finished_at: 2026-11-18T10:46:40.088873+00:00
-- elapsed: 248us
-- outcome: success
-- dialect: duckdb
-- node_id: test.jaffle_shop.dbt_utils_expression_is_true_customers_lifetime_spend_pretax_lifetime_tax_paid_lifetime_spend.ad37c989b6
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.jaffle_shop.dbt_utils_expression_is_true_customers_lifetime_spend_pretax_lifetime_tax_paid_lifetime_spend.ad37c989b6", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  



select
    1
from "my_project"."main"."customers"

where not(lifetime_spend_pretax + lifetime_tax_paid = lifetime_spend)


  
  
      
    ) dbt_internal_test;

-- created_at: 2026-11-18T10:46:40.088777+00:00
-- finished_at: 2026-11-18T10:46:40.088925+00:00
-- elapsed: 148us
-- outcome: success
-- dialect: duckdb
-- node_id: test.jaffle_shop.not_null_customers_customer_id.5c9bf9911d
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.jaffle_shop.not_null_customers_customer_id.5c9bf9911d", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select customer_id
from "my_project"."main"."customers"
where customer_id is null



  
  
      
    ) dbt_internal_test;

-- created_at: 2026-11-18T10:46:40.088644+00:00
-- finished_at: 2026-11-18T10:46:40.089030+00:00
-- elapsed: 386us
-- outcome: success
-- dialect: duckdb
-- node_id: test.jaffle_shop.unique_customers_customer_id.c5af1ff4b1
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.jaffle_shop.unique_customers_customer_id.c5af1ff4b1", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    customer_id as unique_field,
    count(*) as n_records

from "my_project"."main"."customers"
where customer_id is not null
group by customer_id
having count(*) > 1



  
  
      
    ) dbt_internal_test;

-- created_at: 2026-11-18T10:46:40.089392+00:00
-- finished_at: 2026-11-18T10:46:40.089633+00:00
-- elapsed: 241us
-- outcome: success
-- dialect: duckdb
-- node_id: test.jaffle_shop.accepted_values_customers_customer_type__new__returning.d12f0947c8
-- query_id: not available
-- desc: execute adapter call
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.jaffle_shop.accepted_values_customers_customer_type__new__returning.d12f0947c8", "profile_name": "jaffle_shop", "target_name": "dev"} */

    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with all_values as (

    select
        customer_type as value_field,
        count(*) as n_records

    from "my_project"."main"."customers"
    group by customer_type

)

select *
from all_values
where value_field not in (
    'new','returning'
)



  
  
      
    ) dbt_internal_test;

