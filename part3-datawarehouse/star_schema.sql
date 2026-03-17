---3 Dimensions Tables
---Date Dimension
create table dim_date (
    date_id int primary key,
    full_date date,
    month int,
    year int
);
---Store Dimension
create table dim_store (
    store_id int primary key,
    store_name varchar(200),
    store_city varchar(200)
);
---Product Dimension
create table dim_product (
    product_id int primary key,
    product_name varchar(100),
    category varchar(100)
);
---Fact Table
create table fact_sales (
    transaction_id varchar(50) primary key,
    date_id int,
    store_id int,
    product_id int,
    units_sold int,
    unit_price decimal(10, 2),
    total_sales decimal(10, 2),
    foreign key (date_id) references dim_date(date_id),
    foreign key (store_id) references dim_store(store_id),
    foreign key (product_id) references dim_product(product_id)
);

insert into dim_date (date_id, full_date, month, year) values
(1, '2023-08-29', 8, 2023),
(2, '2023-12-12', 12, 2023),
(3, '2023-02-05', 2, 2023),
(4, '2023-02-20', 2, 2023),
(5, '2023-01-15', 1, 2023),
(6, '2023-08-09', 8, 2023),
(7, '2023-03-31', 3, 2023),
(8, '2023-10-26', 10, 2023),
(9, '2023-12-08', 12, 2023),
(10, '2023-08-15', 8, 2023);

insert into dim_store (store_id, store_name, store_city) values
(1, 'Chennai Anna', 'Chennai'),
(2, 'Delhi South', 'Delhi'),
(3, 'Bangalore MG', 'Bangalore'),
(4, 'Pune FC Road', 'Pune'),
(5, 'Mumbai Central', 'Mumbai');

insert into dim_product (product_id, product_name, category) values
(1, 'Speaker', 'Electronics'),
(2, 'Tablet', 'Electronics'),
(3, 'Phone', 'Electronics'),
(4, 'Smartwatch', 'Electronics'),
(5, 'Jeans', 'Clothing'),
(6, 'Biscuits', 'Groceries'),
(7, 'Atta 10Kg', 'Groceries'),
(8, 'Jacket', 'Clothing'),
(9, 'Laptop', 'Electronics'),
(10, 'Milk 1L', 'Groceries');

insert into fact_sales (transaction_id, date_id, store_id, product_id, units_sold, unit_price, total_sales) values
('TXN5000',1,1,1,3,49262.78,147788.34),
('TXN5001',2,1,2,13,23226.12,301939.56),
('TXN5002',3,1,3,20,48703.39,974067.80),
('TXN5003',4,2,2,14,23226.12,325165.68),
('TXN5004',5,1,4,10,58851.01,588510.10),
('TXN5005',6,3,7,12,52464,629568),
('TXN5006',7,4,4,6,58851.01,353106.06),
('TXN5007',10,4,5,16,2317.47,37079.52),
('TXN5008',9,3,6,9,27469.99,247229.91),
('TXN5009',8,3,4,3,58851.01,176553.03);


