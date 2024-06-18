{% macro comparison(test_column_1, test_column_2) %}
    case when {{ test_column_1 }} = {{ test_column_2 }} then 'same' else 'different' end
{% endmacro %}