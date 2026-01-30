select
    customer_id,
    order_date,
    sum(amount) as daily_revenue
from {{ ref('int_orders_with_customers') }}
group by
    customer_id,
    order_date
