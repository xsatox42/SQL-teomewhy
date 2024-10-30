-- Quantos produtos de 'beleza_saude' com menos de 1 litro?
-- o valor que será agrupado na primeira linha, sem fç
SELECT 
       product_category_name,
       count(*),
       max(product_weight_g) as maior_peso,
       min(product_weight_g) as menor_peso,
       avg(product_weight_g) as avg_peso

FROM tb_products

--isso vem antes do group by (no processamento tb)
where product_category_name is NOT NULL

group by product_category_name