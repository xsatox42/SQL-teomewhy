-- a receita por estado, por produto da categoria mais vendida

select
        t2.seller_state,
        t1.product_id,
        t3.product_category_name,
        sum(t1.price) as receita_total

from tb_order_items  as t1

left join tb_sellers as t2
on t1.seller_id = t2.seller_id

left join tb_products as t3
on t1.product_id = t3.product_id

where product_category_name = 

    (select t2.product_category_name

    from tb_order_items  as t1

    left join tb_products as t2
    on t1.product_id = t2.product_id

    group by t2.product_category_name
    order by count(*) desc

    limit 1 -- como o resultado é uma string, pode utilizar o '='. Se fosse uma lista deveria ser utilizado o in

)

group by t2.seller_state,
            t1.product_id,
            t3.product_category_name

