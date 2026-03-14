
CREATE TABLE customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(50),
    customer_email VARCHAR(50),
    customer_city VARCHAR(100)
);

CREATE TABLE products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    unit_price DECIMAL(10, 2)
);

CREATE TABLE sales_representatives (
    sales_rep_id VARCHAR(10) PRIMARY KEY,
    sales_rep_name VARCHAR(50),
    sales_rep_email VARCHAR(50),
    office_address VARCHAR(200)
);

CREATE TABLE orders (
    order_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10),
    sales_rep_id VARCHAR(10),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (sales_rep_id) REFERENCES sales_representatives(sales_rep_id)
);

CREATE TABLE order_items (
    order_id VARCHAR(10),
    product_id VARCHAR(10),
    quantity INT,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);


INSERT INTO customers (customer_id, customer_name, customer_email, customer_city) VALUES
('C001', 'Rohan Mehta', 'rohan@gmail.com', 'Mumbai'),
('C002', 'Priya Sharma', 'priya@gmail.com', 'Delhi'),
('C003', 'Amit Verma', 'amit@gmail.com', 'Bangalore'),
('C004', 'Sneha Iyer', 'sneha@gmail.com', 'Chennai'),
('C005', 'Vikram Singh', 'vikram@gmail.com', 'Mumbai');

INSERT INTO products (product_id, product_name, category, unit_price) VALUES
('P007', 'Pen Set', 'Stationery', 250.00),
('P004', 'Notebook', 'Stationery', 120.00),
('P008', 'Webcam', 'Electronics', 2100.00),
('P006', 'Standing Desk', 'Furniture', 22000.00),
('P003', 'Desk Chair', 'Furniture', 8500.00);

INSERT INTO sales_representatives (sales_rep_id, sales_rep_name, sales_rep_email, office_address) VALUES
('SR01', 'Deepak Joshi', 'deepak@corp.com', 'Mumbai HQ, Nariman Point, Mumbai - 400021'),
('SR02', 'Anita Desai', 'anita@corp.com', 'Delhi Office, Connaught Place, Delhi - 110001'),
('SR03', 'Ravi Kumar', 'ravi@corp.com', 'South Zone, MG Road, Bangalore - 5600018'),
('SR04', 'Sunita Reddy', 'sunita@corp.com', 'West Zone, Domini, Mumbai - 400017'),
('SR05', 'Suresh Nair', 'suresh@corp.com', 'East Zone, Park Avenue, Kolkata - 700014');

INSERT INTO orders (order_id, customer_id, sales_rep_id, order_date) VALUES
('ORD1027','C002','SR02','2023-11-02'),
('ORD1114','C001','SR01','2023-08-06'),
('ORD1132','C003','SR02','2023-03-07'),
('ORD1076','C004','SR02','2023-05-16'),
('ORD1075','C005','SR03','2023-04-18');

INSERT INTO order_items (order_id, product_id, quantity) VALUES
('ORD1027','P004',4),
('ORD1114','P003',2),
('ORD1132','P006',5),
('ORD1076','P008',5),
('ORD1075','P003',3);