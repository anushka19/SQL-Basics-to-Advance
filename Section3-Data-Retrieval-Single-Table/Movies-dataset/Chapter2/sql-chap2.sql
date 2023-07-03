Select * from movies where imdb_rating >= 9;
Select * from movies where imdb_rating >= 6 and imdb_rating <= 8;
Select * from movies where imdb_rating between 6 and 8;

Select * from movies where studio in( "Marvel Studios" ,"Zee Studios");
Select * from movies where imdb_rating is null;

Select * from movies where imdb_rating is not null;

select * from movies where industry = "bollywood"
order by imdb_rating desc
limit 5 offset 4;



