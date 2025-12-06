
{{
  config(
    materialized = 'table',
    )
}}

with source as (
        select *,row_number() 
        over(partition by id order by updated_at desc) as rn 
        from {{ source('source', 'orders') }}
  )
  
  select * except(rn) from source where rn=1