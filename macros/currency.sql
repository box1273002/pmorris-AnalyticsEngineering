{% macro clean_gbp(column_name) %}
-- TODO Try and make this more robust.
TRY_CAST(
trim(
  {{ string_strip(column_name) }},
  '£'
) AS DECIMAL(10,2))

{% endmacro %}
