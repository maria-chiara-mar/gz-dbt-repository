with 

source as (

    select * from {{ source('gz_raw_data', 'raw_gz_facebook') }}

),

renamed as (

    select
        date_date,
        paid_source,
        campaign_key,
        campgn_name as campaign_name,
        CAST(ads_cost as float64),
        impression,
        click

    from source

)

select * from renamed