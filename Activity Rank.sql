select
    from_user,
    num_emails,
    rank() over(order by num_emails) ranking
from
    (select
        from_user,
        count(*) as num_emails
    from
        google_gmail_emails
    group by
        from_user) as sub
order by
    ranking asc, from_user asc
