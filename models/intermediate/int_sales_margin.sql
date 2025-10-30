
select
    products_id,
    date_date,
    orders_id,
    revenue,
    quantity,
    purchase_price,
    ROUND (s.quantity*p.purchase_price,2) as purchase_cost
    ROUND (s.revenue-s.quantity*p.purchase_price,2) AS margin
from {{ref ("stg_gz_raw_data__raw_gz_product")}} s
LEFT JOIN {{ref ("stg_gz_raw_data__raw_gz_sales")}} p
    using (products_id)