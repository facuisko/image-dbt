{% macro attr_hub_credito() %}

    credit_num_credito_fc,		
    sistema_origen,		
    periodo_dia as credit_fec_ingreso,	
    id_registro_stage,	
    '{{ run_started_at}}' as MDM_fhNew,
    MDM_ProcessNew

{% endmacro %}