{{ config(materialized='table') }}
select f.struct_id, f.meddra_name, s.name
from {{ ref('test_2_1') }} f join structures s on s.id = f.struct_id