{% macro generate_schema_name(custom_schema, node) -%}

    {%- set default_schema = target.schema -%}

    {%- if custom_schema is not none and target.name in ('prod', 'samples', 'defer', 'non_critical') -%}
        {{ custom_schema | trim }}
    {%- else -%}
        {{ default_schema }}
    {%- endif -%}

{%- endmacro %}
