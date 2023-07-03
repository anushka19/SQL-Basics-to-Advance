select count(*) from movies where industry="bollywood";
select Max(imdb_rating) from movies where industry="bollywood";
select Min(imdb_rating) from movies where industry="bollywood";

select round(avg(imdb_rating), 2) as avg_rating from movies where studio="marvel studios";

select min(imdb_rating) as min_rating, max(imdb_rating) as max_rating, round(avg(imdb_rating), 2) as avg_rating from movies where studio="marvel studios";

select 
industry, 
count(*) as cnt ,
avg(imdb_rating) as avg_rating

from movies 
group by industry;
-- order by cnt desc;

select 
studio, 
count(studio) as cnt ,
round(avg(imdb_rating), 2) as avg_rating

from movies 
where studio != ""
group by studio, industry
order by avg_rating desc;


