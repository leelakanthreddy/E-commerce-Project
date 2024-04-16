-- avg household income of a customer --

select avg(Income) avg_cust_income
from customer_data;

-- customers have teenagers and children in home --

select  count(*) count 
from customer_data
where Kidhome >=1 or Teenhome>=1;

---- or ----

select kidhome,Teenhome , count(*) noof_familys
from customer_data
group by kidhome,Teenhome;
