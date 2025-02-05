{{ config(materialized = 'view', schema = 'reporting_dev') }}
select *
from {{ref('stg_employee')}}
where employeeid = '{{var('v_employeeid', '8') }}'
