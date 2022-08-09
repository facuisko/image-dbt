{% macro generate_schema_name(custom_schema_name, node) -%}

        {{- 'DA_PREFIX_' ~ node.fqn[1] -}}

{%- endmacro %}