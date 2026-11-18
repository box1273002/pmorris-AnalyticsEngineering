# Data dictionary

Fictional data for a community library service, calendar year 2025.

- **branches.csv**: branch_id, branch_name, area, opened_year
- **members.csv**: member_id, join_date, age_band, membership_type (Junior / Standard / Concession), home_branch_id, postcode
- **items.csv**: item_id, title, item_type, category, replacement_cost (GBP), home_branch_id
- **loans_2025_H1.csv**: loan_id, member_id, item_id, branch_id (branch where the loan was made), loan_date, due_date, return_date (blank = not returned), fine_charged (GBP)
- **loans_2025_H2.csv**: loan_id, member_id, item_id, branch_id (branch where the loan was made), loan_date, due_date, return_date (blank = not returned), fine_charged (GBP)

loans are split by loan date: H1 = January to June, H2 = July to December. Check the column order in each file.

The files are exactly as exported from the library's systems. Checking them before you rely on them is part of the task.
