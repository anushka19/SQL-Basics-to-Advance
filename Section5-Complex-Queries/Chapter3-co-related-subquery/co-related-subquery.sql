#select the actor_id, actor name and the total number of movies they acted in.
-- explain analyze
select a.actor_id,a.name,count(*) as count
from movie_actor ma
join actors a on a.actor_id= ma.actor_id
group by actor_id
order by count desc;

#co-related query - related execution of outter table, it check row by row for each actor otter table with its count
#Subquery - in subquery we start with actors table
-- explain analyze
select 
	actor_id,
	name,
	(select count(*) from movie_actor 
    where actor_id = actors.actor_id) as movies_count#referring outside table keywprd actor_id
 from actors 
 
 
