-- Ex1. Faça uma query que apresente o tamanho médio, máximo e mínimo da descrição do objeto por categoria

SELECT 
       product_category_name,
       count(*) as qtde_objetos,
       max(product_description_lenght) as tamanho_max_description,
       min(product_description_lenght) as tamanho_min_description,
       avg(product_description_lenght) as tamanho_avg_description

FROM tb_products -- tabela de produtos

where product_description_lenght is NOT NULL

group by product_category_name