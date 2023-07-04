#get all actors whose age is between 70 and 85

with actors_age as (
select 
name as actor_name, 
year(curdate())-birth_year as age 
from actors
)

select actor_name,age 
from actors_age
where age > 70 and age < 85;

#scope of actors age is not below after that

with actors_age(actors_name,actors_age) as (
select 
name as x, 
year(curdate())-birth_year as y
from actors
)

select actors_name,actors_age 
from actors_age
where actors_age > 70 and actors_age < 85;
#we cannot access using x and y because they are internal names only written in brackets can be used

#Q2
#6:33
#movies that produced 500% profit and their rating was less than avg rating for all movies
#cannot repeat where
#movies that produced 500% profit
select *,(revenue - budget)*100/budget as per_profit from financials 
where (revenue - budget)*100/budget >= 500;

#their rating was less than avg rating for all movies
select * from movies where imdb_rating  < (
select avg(imdb_rating) as avg_rating from movies);
###########################################################
select x.movie_id,x.per_profit,y.title 
from (select *,
(revenue - budget)*100/budget as per_profit 
from financials 
) x
join (
select * from movies where imdb_rating  < (
select avg(imdb_rating) as avg_rating from movies)
) y on x.movie_id = y.movie_id
where per_profit >= 500