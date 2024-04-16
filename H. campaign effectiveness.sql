-- conversion rate of each company --

select sum(AcceptedCmp1) + sum(AcceptedCmp2) + sum(AcceptedCmp3) + sum(AcceptedCmp4) + sum(AcceptedCmp5) attended_campaigns, sum(Response) responded
from customer_data;

-- 0r --

select campaign , sum(response) as accepted , count(*) total_customers
from
(select 'camp_1' as campaign , Response 
from customer_data
where AcceptedCmp1 = 1
union all
select 'camp_2' as campaign , Response 
from customer_data
where AcceptedCmp2 = 1
union all
select 'camp_3' as campaign , Response 
from customer_data
where AcceptedCmp3 = 1
union all
select 'camp_4' as campaign , Response 
from customer_data
where AcceptedCmp4 = 1
union all
select 'camp_5' as campaign , Response 
from customer_data
where AcceptedCmp5 = 1
union all
select 'totla' as campaign , Response
from customer_data
where Response = 1) as camp_details
group by campaign;


-- which company has the highest acceptance rate --

select campaign , max(response) as highests_acceptance
from
(select 'camp_1' as campaign , sum(Response) as response
from customer_data
where AcceptedCmp1 = 1
union all
select 'camp_2' as campaign , sum(Response) as response
from customer_data
where AcceptedCmp2 = 1
union all
select 'camp_3' as campaign , sum(Response) as response
from customer_data
where AcceptedCmp3 = 1
union all
select 'camp_4' as campaign , sum(Response) as response
from customer_data
where AcceptedCmp4 = 1
union all
select 'camp_5' as campaign ,sum(Response) as response
from customer_data
where AcceptedCmp5 = 1) as camp_details
group by campaign
order by  highests_acceptance desc
limit 1;

