select
    products_id,
    date_date,
    orders_id,
    revenue,
    quantity,
    purchase_price,
    ROUND (quantity*purchase_price,2) as purchase_cost,
    ROUND (revenue-quantity*purchase_price,2) AS margin
from {{ref ("stg_gz_raw_data__raw_gz_product")}}
LEFT JOIN {{ref ("stg_gz_raw_data__raw_gz_sales")}}
    using (products_id)