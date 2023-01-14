select
    dense_rank() over(order by n_exchanges desc) as ranking,
    id_guest,
    n_exchanges
from
    (select
        id_guest,
        sum(n_messages) as n_exchanges
    from
        airbnb_contacts
    group by
        id_guest) as sub
order by 
    ranking asc
