



select
    1
from "my_project"."main"."customers"

where not(lifetime_spend_pretax + lifetime_tax_paid = lifetime_spend)

