-- how many deals are made with discount --

-- what is the avg no.of deals and purchases by customer --

select avg(NumDealsPurchases + NumCatalogPurchases + NumStorePurchases + NumWebPurchases) avg_deals_purchased
from customer_data ;

