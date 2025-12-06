{%- set i = [1,2,3,4,5,6] -%}
{%- for j in i -%}
   {%- if j%2==0 -%}
    {{ j }}
    {%- else -%}
    odd number {{ j }}
    {%- endif -%}
    {%- if loop.last -%}
    {{ j}}
    {%- else -%}
    ,{{ j }}
    {%- endif -%}
{%- endfor -%}    


