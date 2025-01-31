{{config(Materialized ='table')}}

select * from 
{{source('raw_qwt','RAW_ORDERS')}}