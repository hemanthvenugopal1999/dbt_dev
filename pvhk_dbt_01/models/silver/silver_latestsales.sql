 
select s.*, {{ percent_multiplier('discount_amount') }} as latest_discount from 
{{ref("bronze_factsales")}} s 