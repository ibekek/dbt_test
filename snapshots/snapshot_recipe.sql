{% snapshot snapshot_recipe %}
    {{
        config(
          target_schema='public',
          unique_key='row_id',
          strategy='check',
          check_cols=['quantity']
        )
    }}
    select * from {{ ref('test_coffee_recipe') }}
{% endsnapshot %}