-- joins
-- sales data with persons name
select * from sales;
select * from people;
select s.saledate,s.amount,p.Salesperson,s.spid,p.spid
from sales s
join people p on p.spid=s.spid;
-- left join 
-- basically we've started writing queries from sales which is our 
-- left join and person is right join 
-- so sql will try to keep the data in sales table and will 
-- copy the matching data from the right table which is people

select * from people;
select * from products;
-- amount with product name
select s.saledate,s.amount,pr.product
from sales s
left join products pr on pr.pid=s.pid;

-- join multiple table and multiple conditions
-- person name and product name
select s.saledate,s.amount,p.salesperson,p.Team,p.location,pr.Product
from sales s
join people p on p.spid=s.spid
join products pr on pr.pid=s.pid
where p.team in ("Yummies","Delish")
and  p.location="Wellington";

select * from people;
 select s.saledate,s.amount,p.salesperson,p.Team,p.location,pr.Product
from sales s
join people p on p.spid=s.spid
join products pr on pr.pid=s.pid
where p.team in ("")
and  p.location="Wellington";

-- need same data but people should be from india or newzealnd
select * from geo;
select s.saledate,s.amount,p.salesperson,pr.product,g.geo
from sales s
join people p on s.spid=p.spid
join products pr on pr.pid=s.pid
join geo g on g.GeoID=s.GeoID
where  geo in("India","New Zealand");



