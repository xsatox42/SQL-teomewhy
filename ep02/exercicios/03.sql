-- Ex3. Faça uma query que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria. 
--Considere apenas os objetos que tenham a descrição maior que 100.

SELECT 
       product_category_name,
       count(*) as qtde_objetos,
       max(product_name_lenght) as tamanho_max_nome,
       min(product_name_lenght) as tamanho_min_nome,
       avg(product_name_lenght) as tamanho_avg_nome

FROM tb_products

where product_description_lenght >= 100

group by product_category_name