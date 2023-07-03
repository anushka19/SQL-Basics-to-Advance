select m.movie_id, m.title, 
f.budget,f.revenue,f.currency,f.unit, 
case 
when f.unit = 'Billions' then ROUND((revenue - budget) * 1000 ,1)
when f.unit = 'Thousands' then ROUND((revenue - budget) / 1000 , 1)
else  Round((revenue - budget),1)
end as profit_millions
-- case 
-- when f.unit = 'Billions' then f.revenue / 1000 
-- when f.unit = 'Thousands' then f.revenue * 1000 
-- when f.unit = 'Millons' then f.revenue 
-- else null
-- end as revenue_millions,
-- case 
-- when f.unit = 'Billions' then f.budget / 1000
-- when f.unit = 'Thousands' then f.budget * 1000
-- when f.unit = 'Millons' then f.budget
-- else null
-- end as budget_millions,

 -- revenue_millions - budget_millions as profit
from movies m
left join financials f using(movie_id)
where industry = "bollywood"

order by profit_millions desc