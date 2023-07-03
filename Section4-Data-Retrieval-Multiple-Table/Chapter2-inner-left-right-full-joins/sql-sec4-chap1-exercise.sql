select * from movies m
left join languages l on l.language_id = m.language_id
where l.name = 'telugu';

select l.name, count(m.movie_id) as movie_count from languages l
left join movies m using(language_id)
group by l.language_id 
order by movie_count desc;