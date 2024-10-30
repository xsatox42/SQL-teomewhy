-- Quantos produtos tem mais de 5 litros?
-- as colunas possuem as dimensões, length, height, width - o produto dos três é o volume

SELECT count(*),
       count (DISTINCT product_id) as prod_maior_5_litros
    
from tb_products

-- PODERIA TER COLOCADO A CONTA ACIMA E NO WHERE UTILIZADO O ALIAS

WHERE product_length_cm * product_height_cm	* product_width_cm / 1000 > 5