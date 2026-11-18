



select
    1
from "my_project"."main"."stg_orders"

where not(order_total - tax_paid = subtotal)

