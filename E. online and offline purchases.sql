-- how many purchases are made by website , instore and catlog --

select sum(NumWebPurchases) web_purchases, sum(NumCatalogPurchases) catlog_purchases , sum(NumStorePurchases) stote_purchases
from customer_data ; 

-- or --

select ID, NumCatalogPurchases ,NumStorePurchases ,NumWebPurchases
from customer_data
order by id;

-- averageweb visits per month --
 
 select avg(NumWebVisitsMonth)  avg_web_visits_per_month
 from customer_data;
 
 -- by date--
 
  select Dt_Customer , avg(NumWebVisitsMonth)
 from customer_data
group by Dt_Customer;
