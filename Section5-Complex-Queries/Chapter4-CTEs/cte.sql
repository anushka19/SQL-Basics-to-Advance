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