
{{ config ( materialized='incremental', 
            alias = 'estoesunalias',
            incremental_strategy='insert_overwrite',
            partition_by={ "field": 'periodo_dia',
                           "data_type": 'date',
                           "granularity":'day'
                         }    
            )}} --,            
            -- on_schema_change='append_new_columns')}} --sync_all_columns


select 
     
     {{ attr_sat_credito_dia() }}

from   
    
     {{ ref('clean_and_transformed') }}

