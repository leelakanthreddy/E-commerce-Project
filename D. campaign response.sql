-- how many customers accepts each campaign offers --
select sum(AcceptedCmp1) camp1, sum(AcceptedCmp2) camp2, sum(AcceptedCmp3) camp3, sum(AcceptedCmp4) camp4,sum(AcceptedCmp5 )camp5
from customer_data ;


-- overall responce rate form last campaign --

select Response , count(*) count
from customer_data
group by Response ;