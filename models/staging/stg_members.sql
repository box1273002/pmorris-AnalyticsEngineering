with

source as (

    select DISTINCT * from {{ ref('raw_members') }}

),
cleaned as (
  select 
    member_id,
    join_date,
    {{ map_category(
      string_category("age_band"),
      {
        '<12': ['under12', '<12'],
        '12-17': ['1217', '12to17'],
        '18-34': ['1834', '18to34'],
        '35-59': ['3559', '35to59'],
        '60+': ['60plus', '60+', '>60']
      }
    )
    }} AS age_band,
    {{ map_category(
      string_category("membership_type"),
      {
        'Junior': ['junior', 'junor'],
        'Standard': ['std', 'standard'],
        'Concession': ['concession', 'concesion'],
      }
    ) 
    }} AS membership_type,
    home_branch_id,
    -- Official government postcode regex with the space between ZZ9 7LZ made optional. 
    -- In this case it will always be removed but we might as well leave it optional.
    -- (https://assets.publishing.service.gov.uk/government/uploads/system/uploads/attachment_data/file/488478/Bulk_Data_Transfer_-_additional_validation_valid_from_12_November_2015.pdf)
    {{ regex_check(string_category("postcode"),
      '^([Gg][Ii][Rr] 0[Aa]{2})|((([A-Za-z][0-9]{1,2})|(([A-Za-z][A-Ha-hJ-Yj-y][0-9]{1,2})|(([A-Za-z][0-9][A-Za-z])|([A-Za-z][A-Ha-hJ-Yj-y][0-9]?[A-Za-z])))) ?[0-9][A-Za-z]{2})$') }} as postcode,
  from source
)
select * from cleaned
