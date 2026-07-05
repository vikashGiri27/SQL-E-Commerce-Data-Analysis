Create database E_Commerce;
use E_Commerce;
					                         
/*=================================================================================================
	                                  Customer Table
==================================================================================================*/  
 
create table customers_dataset(customer_id varchar(50) primary key,customer_unique_id varchar(50)
,customer_zip_code_prefix int,customer_city varchar(50),customer_state varchar(20));
load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/olist_customers_dataset.csv'
into table customers_dataset
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

select * from customers_dataset;

/*============================================================================================
                                    Orders Table
=============================================================================================*/

 create table orders_dataset(order_id varchar(100) primary key,customer_id varchar(100),order_status varchar(50),
 order_purchase_Date datetime null,order_approved_date datetime null,order_delivered_carrier_Date datetime null,
 order_delivered_customer_Date datetime null,order_estimated_delivery_date datetime null);
 
 LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/olist_orders_dataset.csv'
INTO TABLE orders_dataset
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(order_id, customer_id, order_status, @purchase_dt, @approved_dt, @carrier_dt, @customer_dt, @estimated_dt)
SET 
    order_purchase_date = STR_TO_DATE(NULLIF(@purchase_dt, ''), '%d-%m-%Y %H:%i'),
    order_approved_date = STR_TO_DATE(NULLIF(@approved_dt, ''), '%d-%m-%Y %H:%i'),
    order_delivered_carrier_date = STR_TO_DATE(NULLIF(@carrier_dt, ''), '%d-%m-%Y %H:%i'),
    order_delivered_customer_date = STR_TO_DATE(NULLIF(@customer_dt, ''), '%d-%m-%Y %H:%i'),
    order_estimated_delivery_date = STR_TO_DATE(NULLIF(@estimated_dt, ''), '%d-%m-%Y %H:%i');

select * from orders_dataset;

 /*==========================================================================================
                                       Products Table
 ============================================================================================*/

create table Products_dataset(product_id varchar(100) primary key,product_category_name varchar(100),
Product_name_length int,product_description_length int,product_photos_qty int,product_weight_g int,product_length_cm int,
product_height_cm int,product_width_cm int null);

load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/olist_products_dataset.csv'
into table products_dataset
fieLDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(Product_id,@product_category_name,@Product_name_length,@product_description_length,
@product_photos_qty,@product_weight_g,@product_length_cm,@product_height_cm,@product_width_cm)
set
product_category_name=
nullif(trim(@product_category_name),''),
product_name_length=
nullif(trim(@product_name_length),''),
product_description_length=
nullif(trim(@product_description_length),''),
product_photos_qty=
nullif(trim(@product_photos_qty),''),
product_weight_g=
nullif(trim(@product_weight_g),''),
product_length_cm=
nullif(trim(@product_length_cm),''),
product_height_cm=
nullif(trim(@product_height_cm),''),
product_width_cm=
nullif(trim(@product_width_cm),'');

select * from products_dataset;

/*================================================================================
                                  Seller Table
==================================================================================*/

create table sellers_dataset(seller_id varchar(100) primary key,
seller_zip_code varchar(100),seller_city varchar(100),
seller_state varchar(20));

load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/olist_sellers_dataset.csv'
into table sellers_dataset
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

select * from sellers_dataset;

 /*================================================================================
                                     Order items table
 ==================================================================================*/
 
 create table order_items_dataset(order_id varchar(100),order_item_id int,
product_id varchar(100),seller_id varchar(100),shipping_limit_date datetime,
price decimal(10,2),freight_value decimal(10,2));
desc order_items_dataset;

load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/olist_order_items_dataset.csv'
into table order_Items_dataset
fieLDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(order_id,order_item_id,product_id,seller_id,@shipping_limit_Date,@price,@freight_value)
set
shipping_limit_date=nullif(@shipping_limit_Date,''),
price=nullif(@price,''),
freight_value=nullif(@freight_value,'');

select * from order_items_dataset ;


 /*================================================================================
                                     Order Payments table
 ==================================================================================*/

create table order_payments_dataset(order_id varchar(100),payment_sequential int,
payment_type varchar(50),payment_installments int,payment_value decimal(10,2));

desc payments_Dataset;

load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/olist_order_payments_dataset.csv'
into table order_payments_dataset
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
 ignore 1 rows;
 
 select * from order_payments_dataset;
 
 /*================================================================================
                                     Order Reviews table
 ==================================================================================*/
create table order_reviews_dataset(review_id varchar(100),order_id varchar(100),
review_score int,review_comment_title varchar(255) null,review_comment_message
text null,review_creation_date datetime,review_answer_timestamp datetime);

load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/olist_order_reviews_dataset.csv'
into table order_reviews_dataset
character set utf8mb4
fields terminated by ','
optionally enclosed by '"'
lines terminated by '\r\n'
ignore 1 rows
(review_id,order_id,review_score,@review_comment_title,
@review_comment_message,@review_creation_date,@review_answer_timestamp)
set
review_comment_title=nullif(trim(@review_comment_title),''),
review_comment_message=nullif(trim(@review_comment_message),''),
review_creation_date=str_to_date(@review_creation_date,'%d-%m-%Y %H:%i'),
review_answer_timestamp=str_to_date(@review_answer_timestamp,'%d-%m-%Y %H:%i');
drop table order_reviews_dataset;
select * from order_reviews_dataset;

/*================================================================================
						Add Foreign key Constraints
 ==================================================================================*/
Alter table orders_dataset add foreign key (customer_id)
references customers_dataset (customer_id);

desc orders_dataset;

Alter table order_items_dataset add foreign key (order_id)
references orders_dataset (order_id);
desc order_items_dataset;

Alter table order_items_dataset  add foreign key (seller_id)
references sellers_dataset (seller_id);

desc order_items_dataset;

Alter table order_items_dataset add foreign key (product_id)
references products_dataset (product_id);

desc order_items_dataset;

Alter table order_payments_dataset add foreign key (order_id)
references orders_dataset (order_id);

desc order_payments_dataset;

Alter table order_reviews_dataset add foreign key (order_id)
references orders_dataset (order_id);

desc order_reviews_dataset;