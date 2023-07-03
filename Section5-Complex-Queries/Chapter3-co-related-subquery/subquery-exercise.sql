select *  from movies
where release_year in (
(select max(release_year) from movies),
(select min(release_year) from movies));
-- group by title,movie_id

#Q2
select * from movies
where imdb_rating > (select avg(imdb_rating) from movies)
