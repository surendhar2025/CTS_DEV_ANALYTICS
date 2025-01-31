{{config(Materialized ='table')}}

select * from 
{{source('raw_qwt','raw_customers')}}