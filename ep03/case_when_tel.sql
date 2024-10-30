-- lista das categorias por ordem alfabética

SELECT case when tel1 is not null then tel1
            when tel2 is not null then tel2
            when tel3 is not null then tel3
            when tel4 is not null then tel4
            else 0
        end as telefone

from contatos

Coalesce (tel1, tel2, tel3, tel4) as telefone