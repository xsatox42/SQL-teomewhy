--  Ex4. Faça uma query que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria. 
-- Considere apenas os objetos que tenham a descrição maior que 100. 
-- Exiba apenas as categorias com tamanho médio de descrição do objeto maior que 500 caracteres.


select 
       product_category_name,
       count(*) as qtde_objetos,
       max(product_name_lenght) as tamanho_max_nome,
       min(product_name_lenght) as tamanho_min_nome,
       avg(product_name_lenght) as tamanho_avg_nome

from tb_products

where (product_name_lenght is NOT NULL
and product_description_lenght > 100) -- filtro pré

group by product_category_name --agrupamento

having avg(product_description_lenght) > 500 -- filtro pós agrupamento

order by min(product_name_lenght) desc, -- se utilizar numeros, por ex: order by 1, usa a referencia do select
         max(product_name_lenght) desc        