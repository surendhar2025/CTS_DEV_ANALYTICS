{{config(materialized ='table')}}

select 
Office as office,
OfficeAddress as address,
OfficePostalCode as PostalCode ,
OfficeCity as City,
OfficeStateProvince as StateProvince,
OfficePhone as Phone,
OfficeFax as Fax,
OfficeCountry as country
 from 
{{source('raw_qwt','raw_offices')}}