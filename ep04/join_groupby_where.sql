-- qual a receita de cada categoria de produto? 
-- e o total de vendas?
-- em unidades e em pedidos?
-- Considerando as vendas de 2017 e pedidos entregues

SELECT  
    t2.product_category_name,
    SUM(t1.price) AS receita,
    COUNT(*) AS total_itens_vendidos,
    COUNT(DISTINCT t1.order_id) AS qtde_pedidos,
    round( COUNT(*) / CAST(COUNT(DISTINCT t1.order_id) AS float) ,2) AS avg_itens_por_pedido

FROM tb_order_items AS t1
LEFT JOIN tb_products AS t2
    ON t1.product_id = t2.product_id

left join tb_orders as t3
on t1.order_id = t3.order_id

where t3.order_status = 'delivered' 
and strftime('%Y', t3.order_approved_at) = '2017' -- ou pode usar o cast e transformar o ano em numero, assim não precisa das aspas

GROUP BY t2.product_category_name

ORDER BY COUNT(*) / CAST(COUNT(DISTINCT t1.order_id) AS float) desc
