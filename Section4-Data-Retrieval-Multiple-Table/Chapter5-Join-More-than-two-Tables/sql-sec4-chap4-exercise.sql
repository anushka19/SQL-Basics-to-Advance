select m.title,f.currency, f.unit,
case 
when unit = "Billions" then round(f.revenue /1000,1)
when unit = "Thousands" then round(f.revenue * 1000, 1)
when unit = "Millions" then round(f.revenue,1)
-- else null
end as revenue_mil
from movies m
left join financials f using(movie_id)
left join languages l using(language_id)

where l.name = "Hindi"
order by revenue_mil desc