-- lista das categorias por ordem alfabética

SELECT  
        distinct coalesce (product_category_name, 'outros') as categoria_fillna -- substitui o que é null por 'outros'
        -- usa uma lista de 2 elementos
        -- se tiver uma lista com mais elementos, irá buscar um valor não nulo nas próximas colunas/ele,mentos para fazer a substituição. 

from tb_products

order by 1