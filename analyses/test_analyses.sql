select * from {{ ref("test_3") }}
where comparison = 'different'