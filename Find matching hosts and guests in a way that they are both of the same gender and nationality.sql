select
    distinct host_id,
    guest_id
from
    airbnb_hosts as hosts,
    airbnb_guests as guests
where
    hosts.gender = guests.gender and
    hosts.nationality = guests.nationality
