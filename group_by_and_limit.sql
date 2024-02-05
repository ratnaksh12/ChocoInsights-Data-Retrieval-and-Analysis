select * from geo;
select g.geoid, g.geo,sum(amount)as Total ,avg(amount)
from sales s
join geo g on g.GeoID=s.GeoID
group by GeoID
order by Total desc;

-- total amts by top 10 products
select pr.product,sum(s.amount) as Total
from sales s
join products pr on pr.pid=s.pid
group by pr.Product
order by Total desc
limit 10; 