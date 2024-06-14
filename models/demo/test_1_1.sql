{{ config(materialized='table') }}


select id, drug_class2, ddi_risk
from ddi
