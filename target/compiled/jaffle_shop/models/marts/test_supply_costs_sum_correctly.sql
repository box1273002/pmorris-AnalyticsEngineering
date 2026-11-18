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
        ORDER BY order_id, product_id, supply_cost