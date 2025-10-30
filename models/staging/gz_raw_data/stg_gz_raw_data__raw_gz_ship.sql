with 

source as (

    select * from {{ source('gz_raw_data', 'raw_gz_ship') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,
        shipping_fee_1,
        logcost as log_cost
        CAST (ship_cost as INT64) as ship_cost

    from source

)

select * from renamed