-- bebes acima de 1 foto
-- ou perfumaria acima de 5 fotos

select t1.product_id,
       t1.product_category_name,
       t1.product_photos_qty

from tb_products t1

where (product_category_name = 'bebes'
 and t1.product_photos_qty > 1)

or (product_category_name = 'perfumaria'
 and t1.product_photos_qty > 5)

