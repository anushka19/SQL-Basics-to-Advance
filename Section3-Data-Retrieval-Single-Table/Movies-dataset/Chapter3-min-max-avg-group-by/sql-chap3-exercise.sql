select count(*) from movies where release_year between 2015 and 2022;

select max(release_year) as max_movie_year, 
min(release_year) as min_movie_year 
from movies;

select release_year,count(*)  as cnt
from movies
group by release_year
order by release_year desc;