-- Data Base Administration Project--

/* 1- Bubs wants you to track information on his customers 
(first name, last name, email), his employees 
(first name, last name, start date, position held), his products, 
and the purchases customers make (which customer, when it was purchased, for how much money). 
Think about how many tables you should create. 
Which data goes in which tables? How should the tables relate to one another? */

-- TABLE 1: CUSTOMERS
-- customer_id
-- first_name
-- last_name
-- email

-- TABLE 2 : EMPLOYEES
-- employee_id
-- first_name
-- last_name
-- start_date
-- position

-- TABLE 3: PRODUCTS
-- product_id
-- product_name

-- TABLE 4: CUSTOMERS_PURCHASES
-- customer_purchase_id
-- customer_id
-- product_id
-- date_of_purchase
-- amount_usd

/* 2- Given the database design you came up with, use Workbench to create an EER diagram of the database. 
Include things like primary keys and foreign keys, and anything else you think you should have in the tables. 
Make sure to use reasonable data types for each column. */

-- EER Diagram image is uploaded in files

/* 3- Create a schema called bubsbooties. Within that schema, create the tables that you have diagramed out. 
Make sure they relate to each other, and that they have the same reasonable data types you selected previously. */

-- CREATE SCHEMA `bubsbooties`;

-- TABLE 1:
CREATE TABLE `bubsbooties`.`customers` (
  `customer_id` BIGINT NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`customer_id`));
  
  -- TABLE 2:
CREATE TABLE `bubsbooties`.`employess` (
  `employee_id` INT NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `start_date` DATE NOT NULL,
  `position` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`employee_id`)); 
  
  -- TABLE 3:
CREATE TABLE `bubsbooties`.`products` (
  `product_id` BIGINT NOT NULL,
  `product_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`product_id`)); 
  
  -- TABLE 4:
  CREATE TABLE `bubsbooties`.`customer_purchase` (
  `customer_purchase_id` BIGINT NOT NULL,
  `customer_id` BIGINT NOT NULL,
  `product_id` BIGINT NOT NULL,
  `employee_id` BIGINT NOT NULL,
  `date_of_purchase` TIMESTAMP NOT NULL,
  PRIMARY KEY (`customer_purchase_id`));
  
  /* 4- Insert at least 3 records of data into each table. The exact values do not matter, 
  so feel free to make them up. Just make sure that the data you insert makes sense,
  and that the tables tie together. */
  
  SELECT * FROM customers;
  
  INSERT INTO customers VALUES
  (1, 'Mary', 'Robbinson', 'mrobbinson@gmail.com'),
  (2, 'Luis', 'Rosario', 'lrosario@gmail.com'),
  (3, 'Sara', 'Marino', 'smarino@gmail.com')
  ;
  
  SELECT * FROM employess;
  
 INSERT INTO employess VALUES
  (1, 'Laura', 'Betances', '2023-05-01', 'cashier'),
  (2, 'Tomas', 'Rosario', '2023-03-01', 'store manager'),
  (3, 'Ana', 'Betances', '2023-04-01', 'customer service')
  ;
  
  SELECT * FROM products;
  
INSERT INTO products VALUES
  (1, 'leather booties'),
  (2, 'large booties'),
  (3, 'small booties')
  ;
  
  SELECT * FROM customer_purchase;
  
INSERT INTO customer_purchase VALUES
(1, 1, 1, 1, '2023-03-12'),
(2, 2, 2, 2, '2023-05-13'),
(3, 3, 3, 3, '2023-03-12')
; 


/* 5- Create two users and give them access to the database. The first user, TuckerReilly, will be the DBA,
and should get full database administrator privileges. The second user, EllaBrody, is an Analyst, 
and only needs read access. */

-- Image of the process is uploaded in files
  
  



