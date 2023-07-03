# Select a movie with highest imdb_rating
select * from movies
order by imdb_rating desc
limit 1;

# 0r
#return a single value 
select * from movies
where imdb_rating= ( select max(imdb_rating) from movies);
#where imdb_rating =9.3 - to make it dynamic


# return a list of values
select * from movies
where imdb_rating 
in (
(select max(imdb_rating) from movies), 
(select min(imdb_rating) from movies));

#returns a table or rows
#select all actorts age > 70 and < 85
select * from
(select name, year(curdate())-birth_year as age from actors) actors_age
where age > 70 and age < 85

