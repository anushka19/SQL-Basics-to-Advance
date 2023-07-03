# print profit % for all movies
select * ,
(revenue - budget) as profit,
(revenue - budget)*100/budget as profit
from financials;
-- ase
-- when unit = 'Billions' then revenue * 1000
-- when unit = 'Thousands' then revenue/1000
-- when unit = 'Millions' then revenue
-- else null
-- end as revenue_millions,
-- case
-- when unit = 'Billions' then budget * 1000
-- when unit = 'Thousands' then budget/1000
-- when unit = 'Millions' then budget
-- else null
-- end as budget_millions,
-- (revenue_millions - budget_millions) as profit, profit/budget_millions * 100 as profit_per

-- SELECT count(distinct imdb_rating), STDDEV(imdb_rating) from movies;
SELECT count(distinct imdb_rating), STDDEV(imdb_rating) from movies;