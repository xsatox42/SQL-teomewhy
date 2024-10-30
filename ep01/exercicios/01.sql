-- Quantos produtos na categoria artes?

-- conta a qtdd de linhas retornadas



select count(*) as qtde_linhas,
       count(product_id) as qtd_produtos,
       count(distinct product_id) as qtde_produtos_distintos,
       count (DISTINCT product_category_name) as qtde_categorias_distintas

from tb_products

where product_category_name = 'artes'