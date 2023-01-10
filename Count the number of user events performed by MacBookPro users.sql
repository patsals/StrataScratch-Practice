select
    count(*) as n_occurances,
    event_name
from
    playbook_events
where
    device = "macBook pro"
group by
    event_name;