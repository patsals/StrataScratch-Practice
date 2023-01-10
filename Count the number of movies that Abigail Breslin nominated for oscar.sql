select
    count(*) as n_movies_by_abi
from
    oscar_nominees
where
    nominee = "Abigail Breslin";