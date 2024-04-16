
-- corrolation between numwebcisits and numwebpurchses

select NumWebVisitsMonth , NumWebPurchases
from customer_data;

-- or --
select sum(NumWebVisitsMonth) web_visits , sum(NumWebPurchases) web_purchases
from customer_data;