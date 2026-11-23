with

    source as (select * from {{ ref("stg_items") }}),

    -- Checks the foreigns key are all valid and deletes the rows if not (this may need
    -- to be rethought as somepoint as it my still be useful imformation)
    filtered as (
        select
            * exclude (replacement_cost),
            -- If the replacement_cost cost below zero they likely mean its - £15 in
            -- our books.
            coalesce(replacement_cost < 0, false) as negative_replacement,
            case
                when replacement_cost then abs(replacement_cost) else replacement_cost
            end as replacement_cost

        from source
        where
            (item_id is not null)
            and (home_branch_id in (select branch_id from {{ ref("int_branches") }}))
    ),

    -- Picks a row an id at random as there isn't much else we can do.
    -- TODO pick the most complete column
    deduplicated as (
        select * from filtered qualify row_number() over (partition by item_id) = 1
    )

select *
from deduplicated
