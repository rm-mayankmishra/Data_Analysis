create database project2;
use project2;
CREATE TABLE `customer` (
`customer_id` varchar(10) NOT NULL,
`name` varchar(100) NOT NULL,
`city` varchar(65) NOT NULL,
`email` varchar(45) NOT NULL,
`phone_no` varchar(15) NOT NULL,
`address` varchar(100) NOT NULL,
`pin_code` int NOT NULL,
PRIMARY KEY (`customer_id`)
) ;	

CREATE TABLE `product` (
`product_id` varchar(10) NOT NULL,
`product_name` varchar(100) NOT NULL,
`category` varchar(65) NOT NULL,
`sub_category` varchar(45) NOT NULL,
`original_price` double NOT NULL,
`selling_price` double NOT NULL,
`stock` int NOT NULL,
PRIMARY KEY (`product_id`)
);

CREATE TABLE `order_details` (
`order_id` int NOT NULL AUTO_INCREMENT,
`customer_id` varchar(10) NOT NULL,
`product_id` varchar(10) NOT NULL,
`quantity` double NOT NULL,
`total_price` double NOT NULL,
`payment_mode` varchar(60) NOT NULL,
`order_date` datetime DEFAULT NULL,
`order_status` varchar(20) NOT NULL,
PRIMARY KEY (`order_id`),
KEY `customer_id` (`customer_id`),
KEY `product_id` (`product_id`),
CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`customer_id`)
REFERENCES `customer` (`customer_id`),
CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`)
REFERENCES `product` (`product_id`)
);
INSERT INTO customer (customer_id, name, city, email, phone_no, address, pin_code) VALUES
('C001', 'John Doe', 'Delhi', 'john@example.com', '9876543210', '1234 Elm Street', 110001),
('C002', 'Jane Smith', 'Mumbai', 'jane@example.com', '9876543211', '5678 Maple Avenue', 400001),
('C003', 'Alice Johnson', 'Bangalore', 'alice@example.com', '9876543212', '9101 Oak Drive', 560001),
('C004', 'Bob Brown', 'Chennai', 'bob@example.com', '9876543213', '1112 Pine Lane', 600001),
('C005', 'Charlie Green', 'Kolkata', 'charlie@example.com', '9876543214', '1314 Cedar Court', 700001),
('C006', 'David White', 'Hyderabad', 'david@example.com', '9876543215', '1516 Birch Road', 500001),
('C007', 'Emma Black', 'Pune', 'emma@example.com', '9876543216', '1718 Spruce Boulevard', 411001),
('C008', 'Frank Blue', 'Ahmedabad', 'frank@example.com', '9876543217', '1920 Fir Street', 380001),
('C009', 'Grace Yellow', 'Surat', 'grace@example.com', '9876543218', '2122 Palm Avenue', 395001),
('C010', 'Hank Red', 'Jaipur', 'hank@example.com', '9876543219', '2324 Elm Crescent', 302001);

INSERT INTO product (product_id, product_name, category, sub_category, original_price, selling_price, stock) VALUES
('P001', 'Laptop', 'Electronics', 'Computers', 50000, 45000, 10),
('P002', 'Smartphone', 'Electronics', 'Mobile Phones', 30000, 27000, 20),
('P003', 'Headphones', 'Electronics', 'Accessories', 2000, 1800, 50),
('P004', 'Tablet', 'Electronics', 'Tablets', 25000, 22500, 15),
('P005', 'Monitor', 'Electronics', 'Computers', 15000, 13500, 12),
('P006', 'Keyboard', 'Electronics', 'Accessories', 1000, 900, 30),
('P007', 'Mouse', 'Electronics', 'Accessories', 500, 450, 40),
('P008', 'Smartwatch', 'Electronics', 'Wearables', 10000, 9000, 25),
('P009', 'Printer', 'Electronics', 'Computers', 8000, 7200, 18),
('P010', 'Camera', 'Electronics', 'Photography', 35000, 31500, 8);

INSERT INTO order_details (customer_id, product_id, quantity, total_price, payment_mode, order_date, order_status) VALUES
('C001', 'P001', 1, 45000, 'Credit Card', '2024-10-05 10:30:00', 'Shipped'),
('C002', 'P002', 2, 54000, 'Debit Card', '2024-10-05 11:00:00', 'Processing'),
('C003', 'P003', 5, 9000, 'PayPal', '2024-10-05 11:30:00', 'Delivered'),
('C004', 'P004', 1, 22500, 'Credit Card', '2024-10-05 12:00:00', 'Shipped'),
('C005', 'P005', 3, 40500, 'Cash on Delivery', '2024-10-05 12:30:00', 'Pending'),
('C006', 'P006', 4, 3600, 'Credit Card', '2024-10-05 13:00:00', 'Shipped'),
('C007', 'P007', 2, 900, 'Debit Card', '2024-10-05 13:30:00', 'Processing'),
('C008', 'P008', 1, 9000, 'PayPal', '2024-10-05 14:00:00', 'Delivered'),
('C009', 'P009', 2, 14400, 'Credit Card', '2024-10-05 14:30:00', 'Shipped'),
('C010', 'P010', 1, 31500, 'Cash on Delivery', '2024-10-05 15:00:00', 'Pending');


select * from customer;
select * from product;
select * from order_details;