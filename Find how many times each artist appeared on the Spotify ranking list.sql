select
    artist,
    count(*) as n_occurances
from
    spotify_worldwide_daily_song_ranking
group by
    artist
order by
    n_occurances desc;