
    {{
      config(
        materialized = 'incremental',
        key='booking_id'
        )
    }}

    select 
    Booking_id,
    listing_id,
    Booking_date,
    {{multiply('NIGHTS_BOOKED','BOOKING_AMOUNT','2')}} as total_amount,
    Cleaning_fee,
    Service_fee,
    Created_AT
    from 
    {{ ref('bronze_bookings') }}
    

