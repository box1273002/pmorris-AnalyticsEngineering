{% macro string_strip(column_name) %}
  TRIM(
    REGEXP_REPLACE(
      {{column_name}},
      '[ |_]+',
      ' ',
      'g'
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

{% macro string_category(column_name) %}
-- The most aggressive normaliser
  regexp_replace(
        lower({{ string_strip(column_name) }}),
        '[ _-]|s$|''',
        '',
        'g'
    )
{% endmacro %}

{% macro map_category(column_name, mapping) %}

    CASE
        {% for key, values in mapping.items() %}
            WHEN {{ column_name }} IN (
                {% for value in values %}
                    '{{ value }}'{% if not loop.last %}, {% endif %}
                {% endfor %}
            )
            THEN '{{ key }}'
        {% endfor %}

        ELSE NULL
    END

{% endmacro %}

