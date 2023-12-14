{% snapshot orders_snapshot %}

{{
    config(
      target_database='dbt_training',
      target_schema='test_vijay',
      unique_key='id',

      strategy='timestamp',
      updated_at='_etl_loaded_at',
    )
}}

select * from {{ source('jaffle_shop', 'raw_orders') }}

{% endsnapshot %}