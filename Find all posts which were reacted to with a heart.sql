select
    distinct p.*
from
    facebook_reactions as r
natural join
    facebook_posts as p
where
    r.reaction = "heart";