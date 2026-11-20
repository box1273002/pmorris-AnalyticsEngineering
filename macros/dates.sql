{% macro extract_date(column_name) %}
TRY_CAST(
  COALESCE(
    try_strptime({{ regex_check(column_name,'\d{2} [a-zA-Z]{3} \d{4}') }}, '%d %b %Y'),
    try_strptime({{ regex_check(column_name,'\d{4}-\d{2}-\d{2}') }}, '%Y-%m-%d'),
    try_strptime({{ regex_check(column_name,'\d{2}/\d{2}/\d{4}') }}, '%d/%m/%Y')
  )
  AS DATE
)
{% endmacro %}
