{% test custom_test (model, column_name) %}

with validation as (
    
   
    select 1 as result
    from (
        select count(distinct {{ column_name }}) as unique_count
        from {{ model }}
    ) subquery
    where subquery.unique_count <= 10


)


select * from validation

{% endtest %}