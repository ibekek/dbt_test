{{ config(materialized='table') }}
select id, meddra_name, struct_id from faers