-- Qual o valor total de receita gerada por sellers de cada estado?
-- Considere a base completa, com apenas pedido entregues


SELECT  t3.seller_state as estado,
        ROUND(sum(t2.price), 2) as receita_total,
        round(sum(t2.price) / count(DISTINCT t2.seller_id),2) as avg_receita_seller,
        count(DISTINCT t2.seller_id) as quantidade_sellers

FROM tb_orders AS t1

left join tb_order_items as t2
on t1.order_id = t2.order_id

left join tb_sellers as t3
on t2.seller_id = t3.seller_id

where t1.order_status = 'delivered'

group by t3.seller_state

order by receita_total DESC