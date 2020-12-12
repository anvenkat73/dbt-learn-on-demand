with payments as (

    select id as payment_id,
           orderid as order_id, 
           paymentmethod payment_method,
           status, 
           amount / 100 as amount,
           created as create_at
    from `dbt-tutorial.stripe.payment`

)

select * from payments