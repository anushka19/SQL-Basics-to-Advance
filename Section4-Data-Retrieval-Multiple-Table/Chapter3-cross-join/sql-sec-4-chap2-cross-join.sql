
select * , 
CONCAT(name ," - " , v.variant_name) as full_name, 
t.price + v.variant_price as total_price

from food_db.items t
cross join food_db.variants v;

# example 2
Select * from moviesdb.movies
cross join moviesdb.financials;
