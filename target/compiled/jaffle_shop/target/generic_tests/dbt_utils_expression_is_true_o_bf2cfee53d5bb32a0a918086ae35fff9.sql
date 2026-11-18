



select
    1
from "my_project"."main"."orders"

where not(order_total = subtotal + tax_paid)

