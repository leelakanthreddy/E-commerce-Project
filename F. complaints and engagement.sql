-- how many customers have complaints from last 2 years --

select  ID,Complain 
from customer_data
where datediff(current_date(),Dt_Customer) < 730 and Complain>0;

-- what is the overal engagement rate(aceepted any campaign or responded) among costumers --

select sum(AcceptedCmp1) + sum(AcceptedCmp2) + sum(AcceptedCmp3) + sum(AcceptedCmp4) + sum(AcceptedCmp5) + sum(Response) as engagement_rate
from customer_data

