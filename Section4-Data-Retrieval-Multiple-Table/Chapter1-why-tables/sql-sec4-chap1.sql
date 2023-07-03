#Inner join
select m.movie_id, title, budget, revenue, currency, unit
from movies m
inner join financials f
on m.movie_id = f.movie_id;

# left join
select m.movie_id, title, budget, revenue, currency, unit
from movies m -- left table
left join financials f -- right table
on m.movie_id = f.movie_id;

# right join
select f.movie_id, title, budget, revenue, currency, unit
from movies m -- left table
right join financials f -- right table
on m.movie_id = f.movie_id;

# full join

# left join
select m.movie_id, title, budget, revenue, currency, unit
from movies m -- left table
left join financials f -- right table
on m.movie_id = f.movie_id
union
# right join
select f.movie_id, title, budget, revenue, currency, unit
from movies m -- left table
right join financials f -- right table
on m.movie_id = f.movie_id;

-- select m.movie_id, title, budget, revenue, currency, unit
-- from movies m 
-- full join financials f
-- on m.movie_id = f.movie_id;
# outer join keyword
select m.movie_id, title, budget, revenue, currency, unit
from movies m -- left table
Left outer join financials f -- right table
on m.movie_id = f.movie_id
union
# right join
select f.movie_id, title, budget, revenue, currency, unit
from movies m -- left table
Right outer join financials f -- right table
on m.movie_id = f.movie_id;
# using keyword
select movie_id, title, budget, revenue, currency, unit
from movies m -- left table
Left join financials f -- right table
using(movie_id) -- because column name is same in both
-- on m.movie_id = f.movie_id