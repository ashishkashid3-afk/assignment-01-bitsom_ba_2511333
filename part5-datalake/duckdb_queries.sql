-- Q1: List all customers along with the total number of orders they have placed
select c.customer_id, c.name as customer_name, count(o.order_id) as total_orders
from read_csv_auto('datasets/customers.csv') c
left join read_json_auto('datasets/orders.json') o 
ON c.customer_id = o.customer_id
group by c.customer_id, c.name;
-- Q2: Find the top 3 customers by total order value
select c.customer_id, c.name as customer_name, sum(o.total_amount) as total_order_value
from read_csv_auto('datasets/customers.csv') c
left join read_json_auto('datasets/orders.json') o
ON c.customer_id = o.customer_id
group by c.customer_id, c.name
order by total_order_value desc
limit 3;
-- Q3: List all products purchased by customers from Bangalore
select distinct p.product_name
from read_csv_auto('datasets/customers.csv') c
left join read_json_auto('datasets/orders.json') o 
ON c.customer_id = o.customer_id
left join read_parquet('datasets/products.parquet') p 
ON o.order_id = p.order_id
where c.city = 'Bangalore';
-- Q4: Join all three files to show: customer name, order date, product name, and quantity
select c.name as customer_name, o.order_date, p.product_name, p.quantity
from read_csv_auto('datasets/customers.csv') c
left join read_json_auto('datasets/orders.json') o
ON c.customer_id = o.customer_id
left join read_parquet('datasets/products.parquet') p
ON o.order_id = p.order_id;