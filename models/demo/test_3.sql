{{ config(materialized='table') }}
select sd.struct_id, dc.drug_class_id, dc.name as drug_name, s.name as struct_name
from {{ ref('test_1_2') }} dc join struct2drgclass sd on dc.drug_class_id = sd.drug_class_id join {{ ref('test_2_2') }} s on s.struct_id = sd.struct_id