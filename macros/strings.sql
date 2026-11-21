{% macro string_strip(column_name) %}
    trim(regexp_replace({{ column_name }}, '[ |_]+', ' ', 'g'))
{% endmacro %}

{% macro string_titlecase(column_name) %}
    -- TODO I do not like this, I want title case to work with - as well
    -- but I can't get the regex to work so i'll come back to it.
    list_aggregate(
        list_transform(
            string_split(lower({{ string_strip(column_name) }}), ' '),
            lambda x:upper(left(x, 1)) || substring(x, 2)
        ),
        'string_agg',
        ' '
    )
{% endmacro %}

{% macro string_category(column_name) %}
    -- The most aggressive normaliser
    regexp_replace(lower({{ column_name }}), '[ _-]|''', '', 'g')
{% endmacro %}

{% macro map_category(column_name, mapping) %}
    case
        {% for key, values in mapping.items() %}
            when
                {{ column_name }} in (
                    {% for value in values %}
                        '{{ value }}'{% if not loop.last %}, {% endif %}
                    {% endfor %}
                )
            then '{{ key }}'
        {% endfor %}

        else null
    end
{% endmacro %}

{% macro regex_check(column_name, regex) %}
    case
        when regexp_full_match({{ column_name }}, {{ dbt.string_literal(regex) }})
        then {{ column_name }}
        else null
    end
{% endmacro %}
