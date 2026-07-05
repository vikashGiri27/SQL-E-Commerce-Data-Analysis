/*=================================================================================================
	                                  Customer Table Queries
==================================================================================================*/
use E_Commerce;

#Q1. Find the total numbers of customers.
select count(*) as Total_Customers from customers_dataset;

#Q2.Find the total numbers of unique customers.
select count(distinct customer_unique_id) from customers_dataset;

#Q3. Find the top 10 cities with the highest number of customers.
select customer_city as City,count(customer_id) as Customer_Count from 
customers_dataset group by customer_city order by Customer_count desc
limit 10;

#Q4. Find the top 10 states with the highest number of customers.
select customer_state as State,count(customer_id) as Customer_Count
from customers_dataset group by customer_state order by Customer_Count
desc limit 5;

#Q5. Find the states having more than 5,000 customers.
select customer_state as State,count(customer_id) as Customer_Count
from customers_dataset group by customer_state
having Count(customer_id)>5000 order by Customer_Count desc;

/*=================================================================================================
	                                  Orders Table Queries
==================================================================================================*/

#Q1. Find the total number of orders.
select count(*)  as Total_orders from Orders_dataset;

#Q2. Fint the total number of orders for each state.
select customer_state as State,count(order_id) as Order_count from
customers_dataset c inner join orders_dataset o on c.customer_id=o.customer_id
group by customer_state order by count(order_id) desc;

#Q3. Find the top 5 order statuses with the highest number of orders.
select order_status as Order_status,count(order_id) as Order_Count
from orders_dataset group by order_status order by count(order_id)
 desc limit 5;
 
 #Q4. Fint the number of orders placed in each year.
 select year(order_purchase_date) as Order_Year,count(order_id) as Order_count
 from orders_dataset group by year(order_purchase_date) order by
 Count(order_id) asc;
 
 #Q5. Find the number of orders placed in each month.
 select date_format(order_purchase_date, '%Y-%m') as Order_month,count(order_id)
 as Order_count from orders_dataset group by date_format(order_purchase_date, '%Y-%m')
 order by date_format(order_purchase_date, '%Y-%m');

  
 
 
 /*=================================================================================================
	                                  Products Table Queries
==================================================================================================*/

#Q1. Find the total number of products.
select count(*) as Total_products from products_dataset;


#Q2. Find the total number of products catgories.
select count(distinct product_category_name) as Total_Product_Categories from
products_dataset; 


#Q3. Find the top 10 product categories having the highest number of products.
select product_category_name,count(product_category_name) Product_count from products_dataset
group by product_category_name order by count(product_category_name) desc limit 10;


#Q4. Find the top 10 heaviest products.
select Product_id,Product_category_name,product_weight_g as Product_Weight
from products_dataset order by product_weight_g desc limit 10;


#Q5. Find the Top 10 longest products based on product length (cm). 
select Product_Id,Product_Category_name,product_length_cm as Product_Length
from products_dataset order by product_length_cm desc limit 10;



 /*=================================================================================================
	                                  Order Items Table Queries
==================================================================================================*/

#Q1. Find the total numbers of order items.
select count(*) as Total_Order_items from order_items_dataset;

 
#Q2. Find the top 10 most expensive order items (including freight charges).
select order_id,product_id,price+freight_value as Total_Price
from order_items_dataset order by Total_Price desc limit 10;


#Q3. Find the top 10 products with the highest freight value.
select product_id,sum(freight_value) as Freight_charges from
order_items_dataset group by product_id order by freight_Charges
desc limit 10;


#Q4. Find the average price of each product.
select product_id,round(avg(price),2) as Avg_product_Price from order_items_dataset
group by product_id order by Avg_Product_Price desc;


#Q5. Find the top 10 sellers having the highest numbers of order items.
select seller_id,count(order_item_id) as Order_Items_Count from order_items_dataset
group by seller_id order by order_items_count desc limit 10;


 /*=================================================================================================
	                                  Order Payments Table Queries
==================================================================================================*/
select * from order_payments_dataset;

#Q1. Find the total number of payments record.
select count(*) as Total_Payments_Record
from order_payments_dataset;


#Q2. Find the total payment amount received.
select sum(payment_value) as Total_Payment_Amount
from order_payments_dataset;


#Q3. Find the average payment value.
select round(avg(payment_value),2) as Avg_Payment_value 
from order_payments_dataset;


#Q4. Find the top 3 payments types with the highest total payment value.
select Payment_Type,sum(payment_value) as Total_Payment_Value
from order_payments_dataset group by Payment_Type order by
Total_Payment_Value desc limit 3;

#Q5. Find the top 10 highest payment values.
Select Order_Id,Payment_Value from order_payments_dataset
order by Payment_Value desc limit 10;

 /*=================================================================================================
	                                  Order Reviews Table Queries
==================================================================================================*/

#Q1. Find the total number of reviews.
select count(*) as Total_Reviews from order_reviews_dataset;

#Q2. Find the average review score.
select round(avg(review_score),0) as Avg_Review_Score
from order_reviews_dataset;


#Q3. Find the number of reviews for each review score(1 to 5).
select review_score,count(review_score) as Review_Type
from order_reviews_dataset group by review_score
order by review_score asc;

#Q4. Find the average review score by year.
select year(review_creation_date) As Review_Year,round(Avg(review_score),2)
as Avg_Review_Score from order_reviews_dataset group by Review_Year
order by Review_Year asc;

#Q5. Find the total number of reviews having no review comment message.
select count(review_id) as No_Comment_Review from
order_reviews_dataset where review_comment_message is null;

 /*=================================================================================================
	                                  Sellers Table Queries
==================================================================================================*/

#Q1. Find the total number of seller.
select count(*) as Total_Sellers from sellers_dataset;

#Q2. Find the total number of unique seller cities.
select count(distinct seller_city) as Total_Unique_Seller_Cities
from sellers_dataset;

#Q3. Find the top 10 cities having the highest number of sellers.
select seller_city,count(seller_id) as seller_count from
sellers_dataset group by seller_city order by seller_count desc
limit 10;

#Q4. Fint the top 5 states having the highest numbers of sellers.
select seller_state,count(seller_id) seller_count from
sellers_dataset group by seller_State order by seller_count
desc limit 5;

#Q5. Find the number of sellers in each state.
select seller_state,count(seller_id) seller_count from
sellers_dataset group by seller_State order by seller_count;