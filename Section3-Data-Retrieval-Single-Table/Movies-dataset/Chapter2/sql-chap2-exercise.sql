select * from movies 
order by release_year desc;

select * from movies where release_year= 2022;

select * from movies where release_year > 2020;

select * from movies where release_year > 2020 and imdb_rating > 8;

select * from movies where studio = "Marvel studios" or studio = "Hombale Films";

select * from movies where title like "%thor%" ;

select * from movies where studio not like "%marvel studio%" ;
-- or
select * from movies where studio != "marvel studio" ;





