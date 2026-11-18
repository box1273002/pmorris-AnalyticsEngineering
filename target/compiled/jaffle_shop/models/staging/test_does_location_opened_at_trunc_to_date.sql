-- Build actual result given inputs
WITH
            	my_project_main_raw_raw_stores as (SELECT CAST(1 AS varchar) AS id, CAST('Vice City' AS varchar) AS name, CAST('2016-09-01T00:00:00' AS timestamp) AS opened_at, CAST(0.2 AS double) AS tax_rate
UNION ALL
SELECT CAST(2 AS varchar) AS id, CAST('San Andreas' AS varchar) AS name, CAST('2079-10-27T23:59:59.9999' AS timestamp) AS opened_at, CAST(0.1 AS double) AS tax_rate),
  	my_project_main_stg_locations_expect as (SELECT CAST(1 AS varchar) AS location_id, CAST('Vice City' AS varchar) AS location_name, CAST(0.2 AS double) AS tax_rate, CAST('2016-09-01' AS date) AS opened_date
UNION ALL
SELECT CAST(2 AS varchar) AS location_id, CAST('San Andreas' AS varchar) AS location_name, CAST(0.1 AS double) AS tax_rate, CAST('2079-10-27' AS date) AS opened_date),
  	my_project_main_stg_locations_actual as (with

source as (

    -- 
    select * from my_project_main_raw_raw_stores

),

renamed as (

    select

        ----------  ids
        id as location_id,

        ---------- text
        name as location_name,

        ---------- numerics
        tax_rate,

        ---------- timestamps
        cast(opened_at as date) as opened_date

    from source

)

select * from renamed
)
        SELECT * FROM (
        (SELECT location_id, location_name, tax_rate, opened_date, 'actual' AS actual_or_expected FROM my_project_main_stg_locations_actual)
        UNION ALL
        (SELECT location_id, location_name, tax_rate, opened_date, 'expected' AS actual_or_expected FROM my_project_main_stg_locations_expect)
        ) unit_test_diff
        ORDER BY location_id, location_name, tax_rate, opened_date