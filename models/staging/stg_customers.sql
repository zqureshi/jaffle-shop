-- Comment for EPD onboarding repositories course
<<<<<<< HEAD
-- Adding this comment to create a merge conflict
-- in the dbt cloud IDE
-- This should create a merge conflict
-- Merge conflict resolved
=======
>>>>>>> d4375595bf12cdeb8b5b59c88c95a570dfcf6af0
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
