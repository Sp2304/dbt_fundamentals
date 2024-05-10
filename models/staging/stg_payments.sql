with source as (
    
    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}
    select * from {{ ref('raw_payments') }}

),

renamed as (

    select
        id as payment_id,
        order_id,
        payment_method,

        --`amount` is currently stored in cents, so we convert it to dollars
        -- amount / 100 as amount
<<<<<<< HEAD
         {{ cents_to_dollars('amount') }} as amount_usd 
=======
        {{ cents_to_dollars('amount') }} as amount_usd 
>>>>>>> fad6cbe8c251f16793b4143868ce32d12157dd67

    from source

)

select * from renamed
