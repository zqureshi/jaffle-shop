-- Comment for EPD onboarding repositories course
-- Adding this comment to create a merge conflict
-- in the dbt cloud IDE
-- This should create a merge conflict
-- Merge conflict resolved
with

source as (

    select * from {{ source('ecom', 'raw_customers') }}

),

renamed as (

    select

        ----------  ids
        id as customer_id,

        ---------- text
        name as customer_name

    from source

)

select * from renamed
