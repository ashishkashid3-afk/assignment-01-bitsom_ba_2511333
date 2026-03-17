-- Q1: Total sales revenue by product category for each month
select d.month, p.category, sum(f.total_sales) as total_revenue
from fact_sales f
left join dim_date d on f.date_id=d.date_id
left join dim_product p on f.product_id=p.product_id
group by d.month, p.category
order by d.month;
-- Q2: Top 2 performing stores by total revenue
select s.store_name, sum(f.total_sales) as total_revenue
From fact_sales f
left join dim_store s on f.store_id=s.store_id
group by store_name
order by total_revenue desc
limit 2;
-- Q3: Month-over-month sales trend across all stores
select d.month, sum(f.total_sales) as mom_sales
from fact_sales f
left join dim_date d on f.date_id=d.date_id
group by d.month
order by d.month;

