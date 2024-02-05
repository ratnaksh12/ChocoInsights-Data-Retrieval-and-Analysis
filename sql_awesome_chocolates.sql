show databases;
select * from sales;
select saledate,amount,customers from sales;
select saledate,amount,boxes, (amount/boxes)as "Amount per box"  from sales; 
select * from sales where amount>10000 
order by Amount desc;
  
select * from sales
where GeoID="G1"
order by pid,amount desc;

select * from sales 
where amount>10000 and saledate>="2022-01-01";
-- another method to  extract only year 
 select saledate,amount from sales
 where amount>10000 and year(saledate)=2022
 order by amount desc;
 select * from sales ;
 -- method1
 select * from sales where boxes between 0 and 50 
 order by boxes desc;
 -- method 2
 select * from sales
 where boxes >=0 and boxes <=50
 order by boxes desc;
 -- shipmnts held on friday
 -- 0=monday,1=tuesday aise chalta hain 
 select saledate,amount ,boxes,weekday(saledate) 
 from sales
 where weekday(saledate) =4;
 select * from people;
 -- 1st method
 select * from people 
 where team between "Delish" and "Jucies";
 -- 2nd mehtod
 select * from people
 where team="Delish" or team="Jucies";
 -- 3rd and most effective method
 select * from people
 where team in ("Delish","Jucies");
 -- like operator
 select * from people where team like "y%";
 select * from people ;
 select * from people where Salesperson
 like "r____l%";
 -- case operator
 #question is amt having 1000 will ve level of under 1000
 #amt bw 1000 and 5000 under level of 5000
 #amt bw 5000 and 10000 under level of 10000
 select * from sales;
 select saledate,amount,
	case when amount<1000 then "Under 1k"
         when  amount <5000 then "Under5k"
         when amount <10000 then "Under10k"
         else "10k or more"
    end as "Amount Category" from sales;
    
  
    