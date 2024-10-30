select *

from (

select seller_state, 
       count(*) as qtde_sellers

from   tb_sellers


-- where seller_state IN ('SP', 'RJ', 'PR')

-- o in funciona como vários or concatenados

GROUP by seller_state

)

where qtde_sellers > 10