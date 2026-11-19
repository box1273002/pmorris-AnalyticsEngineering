{% macro string_strip(column_name) %}
  TRIM(
    REGEXP_REPLACE(
      {{column_name}},
      '[ |_]+',
      ' '
    )
  )
{% endmacro %}

{% macro string_titlecase(column_name) %}
-- TODO I do not like this, I want title case to work with - as well
-- but I can't get the regex to work so i'll come back to it.
list_aggregate(
    list_transform(
        string_split(lower({{ string_strip(column_name) }}), ' '),
        lambda x: upper(left(x, 1)) || substring(x, 2)
    ),
    'string_agg',
    ' '
)
{% endmacro %}
