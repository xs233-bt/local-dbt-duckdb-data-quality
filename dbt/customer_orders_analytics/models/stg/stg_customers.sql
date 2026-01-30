select
    customer_id,
    country,
    cast(is_active as boolean) as is_active
from {{ source('raw', 'raw_customers') }}
