{% macro clean_gbp(column_name) %}
    -- TODO Try and make this more robust.
    try_cast(trim({{ string_strip(column_name) }}, '£') as decimal(10, 2))

{% endmacro %}
