select
    o.order_id,
    o.order_date,
    o.amount,
    c.customer_id,
    c.country
from {{ ref('stg_orders') }} o
join {{ ref('stg_customers') }} c
    on o.customer_id = c.customer_id
where c.is_active = true
