{{
  config(
    materialized = 'ephemeral',
    )
}}

WITH bookings AS 
(
    SELECT 
        BOOKING_ID,
        BOOKING_DATE,
        CREATED_AT
    FROM 
        {{ ref('obt') }}
)
SELECT * FROM bookings