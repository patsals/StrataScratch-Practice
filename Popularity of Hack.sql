select 
    e.location,
    avg(hs.popularity) as avg_popularity
from
    facebook_employees as e
join
    facebook_hack_survey as hs
on
    e.id = hs.employee_id
group by
    e.location;