-- avg no of days since last purchas --

select avg(Recency) avg_recency
from customer_data;


-- avg spend on each product category ---

select avg(MntFishProducts) avg_spent_on_fish , avg(MntFruits) avg_spent_on_fruits , avg(MntGoldProds) avg_spent_on_gold , avg(MntMeatProducts) avg_spent_on_meat  , avg(MntSweetProducts) avg_spent_on_sweet , avg(MntWines) avg_spent_on_wine 
from customer_data