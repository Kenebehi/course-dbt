{% snapshot orders_snapshot %}

  {{
    config(
      target_schema='snapshots',
      unique_key='ORDER_ID',

      strategy='timestamp',
      updated_at='CREATED_AT',
    )
  }}

  SELECT * FROM {{ source('postgres', 'orders') }}

{% endsnapshot %}