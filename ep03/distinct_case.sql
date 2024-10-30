-- lista das categorias por ordem alfabética

SELECT  
        distinct case when product_category_name is NULL then 'outros' -- se for null preenche com outros
                      else product_category_name -- senão mantém o proprio valor
             end as categoria_fillna -- end: sintaxe para finalizar o case when, e o as dá nome a coluna 

from tb_products

order by 1