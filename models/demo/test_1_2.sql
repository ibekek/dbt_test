{{ config(materialized='table') }}
select dc.id as drug_class_id, ddi_risk, dc.name
from {{ ref('test_1_1') }} d join drug_class dc on d.drug_class2 = dc.name