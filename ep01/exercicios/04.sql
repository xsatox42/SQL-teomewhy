-- Quantos produtos de 'beleza_saude' com menos de 1 litro?

SELECT count(*) as qtde_linhas
    
from tb_products

WHERE product_length_cm * product_height_cm	* product_width_cm / 1000 < 1
AND product_category_name = 'beleza_saude'
