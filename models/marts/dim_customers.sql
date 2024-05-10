-- {%- set payment_methods = ['bank_transfer', 'credit_card', 'coupon', 'gift_card'] -%}

<<<<<<< HEAD
{{ config(materialized='table', tags='dimension')}}
=======
{{ config(materialized='table')}}


>>>>>>> fad6cbe8c251f16793b4143868ce32d12157dd67


with customers as (

    select

     {{ dbt_utils.generate_surrogate_key(['customer_id','first_name']) }} as id,
     customer_id,
     first_name,
     last_name
     

from {{ ref('stg_customers') }}
order by customer_id

),

orders as (

    select * from {{ref('stg_orders')}}
),

pay as (

    select * from {{ref('stg_payments')}}
),

customer_orders as (

    select
        
        orders.order_id,
        min(orders.order_date) as first_order_date,
        max(orders.order_date) as most_recent_order_date,
<<<<<<< HEAD
        count(orders.order_id) as number_of_orders
=======
        count(orders.order_id) as number_of_orders,
<<<<<<< HEAD
        customer_orders.value
            {% for payment_method in payment_methods -%}

         sum(case when payment_method = '{{ payment_method }}' then amount_usd else 0 end) as {{ payment_method }}_amount        
       
       {%- if not loop.last -%}
         ,
       {% endif -%}

       {%- endfor %}
=======
>>>>>>> e704e1865fac469142fff5765588ee215ddd784a
>>>>>>> fad6cbe8c251f16793b4143868ce32d12157dd67
        
        -- sum(case when payment_method in('credit_card','coupon','gift_card')  then amount_usd else 0 end) as value

    from pay join orders on orders.order_id = pay.order_id  
    group by 1
            
),



<<<<<<< HEAD
=======


>>>>>>> fad6cbe8c251f16793b4143868ce32d12157dd67
final as (

    select
        customers.id,
        customers.customer_id,
        customers.first_name,
        customers.last_name,
        customer_orders.order_id,
        customer_orders.first_order_date,
        customer_orders.most_recent_order_date,
        customer_orders.number_of_orders
        -- customer_orders.value

        
    
        from customers join customer_orders on customers.customer_id = customer_orders.order_id
        
       
)

select * from final

<<<<<<< HEAD
-- customer_orders.value
        --     {% for payment_method in payment_methods -%}

    --      sum(case when payment_method = '{{ payment_method }}' then amount_usd else 0 end) as {{ payment_method }}_amount        
       
    --    {%- if not loop.last -%}
    --      ,
    --    {% endif -%}

    --    {%- endfor %}
=======
<<<<<<< HEAD
➕
=======
>>>>>>> e704e1865fac469142fff5765588ee215ddd784a
>>>>>>> fad6cbe8c251f16793b4143868ce32d12157dd67
