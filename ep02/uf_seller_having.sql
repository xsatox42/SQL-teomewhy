

select seller_state, 
       count(*) as qtde_sellers

from   tb_sellers

-- filtro pré agregação
where seller_state IN ('SP', 'RJ', 'PR')

-- o in funciona como vários or concatenados

GROUP by seller_state

-- filtro pós agregação
having count(*) > 10