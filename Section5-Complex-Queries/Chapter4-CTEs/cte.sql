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
SELECT 
    *, (revenue - budget) * 100 / budget AS per_profit
FROM
    financials
WHERE
    (revenue - budget) * 100 / budget >= 500;

SELECT 
    *
FROM
    movies
WHERE
    imdb_rating < (SELECT 
            AVG(imdb_rating) AS avg_rating
        FROM
            movies);
SELECT 
    x.movie_id, x.per_profit, y.title
FROM
    (SELECT 
        *, (revenue - budget) * 100 / budget AS per_profit
    FROM
        financials) x
        JOIN
    (SELECT 
        *
    FROM
        movies
    WHERE
        imdb_rating < (SELECT 
                AVG(imdb_rating) AS avg_rating
            FROM
                movies)) y ON x.movie_id = y.movie_id
WHERE
    per_profit >= 500;

############CTE

with x as (
select *,
(revenue - budget)*100/budget as per_profit 
from financials 
),
y as (
	select * from movies where imdb_rating  < (
select avg(imdb_rating) as avg_rating from movies)
)
select x.movie_id,x.per_profit,y.title ,y.imdb_rating
from x
join y
on x.movie_id = y.movie_id
where per_profit >= 500

#Benefits
# 1. simple queries - Query readability
# 2. same result set can be used multiple times - Query reusability
# give potential candidates for views - Visibility for creating Data views- data transformed version of table

