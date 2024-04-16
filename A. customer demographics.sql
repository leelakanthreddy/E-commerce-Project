-- average age of a customer --

select avg(year(current_date()) - Year_Birth) as avg_cust_age
from customer_data;

-- no of education catogaryes --

select Education , count(*) count
from customer_data
group by Education;

-- distrubution of maritian status --

select Marital_Status , count(*) count
from customer_data
group by Marital_Status;