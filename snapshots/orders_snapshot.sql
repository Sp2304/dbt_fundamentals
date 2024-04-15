{% snapshot orders_snapshot %}

{{
    config(
      target_database='dataopsly_db',
      target_schema='snapshots',
      unique_key='id',

      strategy='timestamp',
      updated_at='_etl_loaded_at',
    )
}}

select * from {{ ref('raw_orders') }}

{% endsnapshot %}