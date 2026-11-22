## Data Decisions.
### Members
  - If there are duplicate member ids keep the row with the most recent join date, as is likely to be the most up to date.
  - Potential issues the new member might be more incomplete. If they have to same id and date it picks random it might be worth adding a more full option.
### Items
  - Convert absolute value of replacement cost as negative doesn't make sense (likely just it would cost use -XXXX)

## TODO
- Find a better way of selecting distinct (only order if there are duplicates basically make that whole idea better)
- Find a better alternative to dbt_utils as it check not false rather than true.
