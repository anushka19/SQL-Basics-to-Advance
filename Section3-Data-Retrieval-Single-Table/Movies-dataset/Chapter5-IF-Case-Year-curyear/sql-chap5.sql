select *, 
year(curdate()) - birth_year as age 
from actors;

select *, revenue - budget as profit 
from financials ;

# print revenue in single currency 
select *, revenue - budget as profit , 
IF(currency='USD', revenue*77, revenue) as revenu_inr
-- if(condition, true, false)
from financials ;

# Print all revenue in millions
select distinct unit from financials;

select *, 
case 
when unit ='Billions' then revenue*1000
when unit ='Thousands' then revenue/1000
when unit ='Millions' then revenue
else null
end as revenue_millions

from financials ;
-- billions -> 12 -> 12000 = 12*1000 -> rev*1000
-- thousands -> 4567 -> 4.567 -> rev/1000
-- millions -> rev