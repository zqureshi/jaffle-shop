-- Trigger a run because this model was modified
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
