{{config(materialized ='table')}}

select 
orderid,
lineno,
shipperid
custoerid,
productid,
employeeid,
split_part(shipmentdate,' ',1) as shipmentdate,  
status
from 
{{source('raw_qwt','RAW_SHIPMENT')}} a