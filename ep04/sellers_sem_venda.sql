-- Desafio: identificar vendedores que não venderam em dezembro de 2017
-- considere vendas válidas ( ie: entregues)
-- desafio de negocio: entrar em contato com eles para incetivá-los a vender


SELECT 
        t2.seller_id,
        t3.seller_state,
            max(CASE 
                WHEN strftime('%Y-%m', t1.order_approved_at) = '2017-12' THEN 1
                ELSE 0
            END) as flag_compra_12_2017

FROM tb_orders AS t1

left join tb_order_items as t2
on t1.order_id = t2.order_id

left join tb_sellers as t3
on t3.seller_id = t2.seller_id

WHERE t1.order_approved_at < '2018-01-01'
AND t1.order_status = 'delivered'

GROUP by t2.seller_id, t3.seller_state

having max(CASE 
                WHEN strftime('%Y-%m', t1.order_approved_at) = '2017-12' THEN 1
                ELSE 0
            END) = 0