-- a receita por estado, por produto da categoria mais vendida

with tb_best_categoria as (

 select t2.product_category_name
    from tb_order_items  as t1
    left join tb_products as t2
    on t1.product_id = t2.product_id
    group by t2.product_category_name
    order by count(*) desc
    limit 3 
)

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

inner join tb_best_categoria as t4 -- inner join, pq o sqlite ñ tem right join

on t3.product_category_name = t4.product_category_name

group by t2.seller_state,
            t1.product_id,
            t3.product_category_name

