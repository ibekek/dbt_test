{% snapshot snapshot_test %}
    {{
        config(
          target_schema='public',
          unique_key='id',
          strategy='timestamp',
          updated_at='date'
        )
    }}
    select * from {{ ref('test_snap') }}
{% endsnapshot %}