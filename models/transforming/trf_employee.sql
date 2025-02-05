{{config(materialized = 'table', schema = 'transforming_dev')}}
 
select
 
emp.employeeid,
emp.firstname,
emp.lastname,
emp.title,
emp.hire_date,
IFF(emp.extension = '-', 'NA', emp.extension) as extension,
emp.year_salary,
IFF(mgr.firstname is null, emp.firstname, mgr.firstname) as managername,
IFF(mgr.title is null, emp.title, mgr.title) as managertitle,
ofc.address,
ofc.city,
ofc.country
 
from
 
{{ref('stg_employee')}} as emp left join
 
{{ref('stg_employee')}} as mgr on emp.reports_to = mgr.employeeid
 
left join {{ref('stg_offices')}} as ofc on emp.office = ofc.office