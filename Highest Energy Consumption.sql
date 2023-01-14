with total_fb_energy 
as(
    select
        date,
        sum(consumption) as total_consumption
    from
        (select * from fb_eu_energy
        union all
        select * from fb_asia_energy
        union all
        select * from fb_na_energy) as sub
    group by
        date
    order by
        total_consumption desc)
select
    *
from
    total_fb_energy
where
    total_consumption = (select max(total_consumption) from total_fb_energy)
