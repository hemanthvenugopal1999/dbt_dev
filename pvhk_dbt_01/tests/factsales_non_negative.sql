select * from {{ref("bronze_factsales")}} 
where gross_amount<0 or net_amount<0