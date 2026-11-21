with

source as (
  select * from {{ dbt_utils.union_relations(
    relations=[
        ref('raw_loans_2025_H1'),
        ref('raw_loans_2025_H2')
    ]
) }}
),

-- loan_id,member_id,item_id,branch_id,loan_date,due_date,return_date,fine_charged
standardized as (
  select
    upper({{ string_strip("loan_id") }}) as loan_id,
    upper({{ string_strip("member_id") }}) as member_id,
    upper({{ string_strip("item_id") }}) as item_id,
    upper({{ string_strip("branch_id") }}) as branch_id,
    {{ extract_date(string_strip("loan_date")) }} as loan_date,
    {{ extract_date(string_strip("due_date")) }} as due_date,
    return_date is not null as is_returned,
    {{ extract_date(string_strip("return_date")) }} as return_date,
    {{ clean_gbp("fine_charged") }} as fine_charged,
  from source
)



select distinct * from standardized 
