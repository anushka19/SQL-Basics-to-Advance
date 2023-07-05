with sub1 as (
select industry,release_year,title,f.revenue - f.budget as profit
from movies m
left join financials f on f.movie_id = m.movie_id
where industry ="Hollywood" and release_year > 2000


)
select * from sub1
where profit > 500