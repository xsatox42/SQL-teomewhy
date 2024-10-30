-- Qual o valor total de receita gerada por clientes de cada estado? (média de receita por cliente)
-- Considere a base completa com apenas pedido entregues


SELECT  t2.customer_state as estado,
        ROUND(SUM(t3.price) / COUNT(DISTINCT t2.customer_id), 2) AS ticket_medio_por_cliente,
        round(SUM(t3.price),2) as receita_total_estado,
        --COUNT(DISTINCT t2.customer_unique_id) o unique é gerado como um agrupador, uma pessoa pode ter mais de um customer_id
        COUNT(DISTINCT t2.customer_id) as total_clientes_estado


FROM tb_orders AS t1

left join tb_customers as t2
on t1.customer_id = t2.customer_id

left join tb_order_items as t3
on t1.order_id = t3.order_id

where t1.order_status = 'delivered'

group by t2.customer_state

order by ROUND(SUM(t3.price) / COUNT(DISTINCT t2.customer_unique_id), 2) DESC