select s.*,c.first_name from 
{{ref("bronze_factsales")}} s 
left join {{ref("bronze_dimcustomer")}} c on s.customer_sk=c.customer_sk