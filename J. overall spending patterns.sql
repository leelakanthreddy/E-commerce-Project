-- what is the overall distuibution of spending across all product categories --

select sum(MntFishProducts) spent_on_fish , sum(MntFruits) spent_on_fruits , sum(MntGoldProds) spent_on_gold , sum(MntMeatProducts) spent_on_meat  , sum(MntSweetProducts) spent_on_sweet , sum(MntWines) spent_on_wine
from customer_data