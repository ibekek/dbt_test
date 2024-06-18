{% snapshot snapshot_recipe %}
    {{
        config(
          target_schema='public',
          unique_key='row_id',
          strategy='timestamp',
          updated_at='quantity'
        )
    }}
    select * from {{ ref('test_coffee_recipe') }}
{% endsnapshot %}