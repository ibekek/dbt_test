{% test more_than_ten(model, column_name) %}

with validation as (
    
    select {{ column_name }} as cur_col
    from {{ model }}
    group by {{ column_name }}
    having count(*)>10

)

select * from validation

{% endtest %}