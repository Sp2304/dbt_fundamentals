{{ config(materialized='table', alias = 'jaffle_shop_variables') }}
select id,first_name,last_name from {{ref('raw_customers')}}
where id = 1
--and first_name = '{{var('first_name')}}'