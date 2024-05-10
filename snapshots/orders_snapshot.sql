{% snapshot orders_snapshot %}

{{
    config(
      target_database='dbt_training',
<<<<<<< HEAD
      target_schema='snapshots',
=======
      target_schema='test_vijay',
>>>>>>> fad6cbe8c251f16793b4143868ce32d12157dd67
      unique_key='id',

      strategy='timestamp',
      updated_at='_etl_loaded_at',
    )
}}

select * from {{ source('jaffle_shop', 'raw_orders') }}

{% endsnapshot %}