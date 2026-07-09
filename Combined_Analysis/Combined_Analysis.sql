 /*=================================================================================================
	                                  Customer Analysis Analysis
==================================================================================================*/
#Q1. Find the top 10 customers who placed the highest numbers of orders.
select c.customer_unique_id,count(o.order_id) as order_count
from customers_dataset c left join orders_dataset o on c.customer_id=o.customer_id
group by c.customer_unique_id order by order_count desc limit 10;

#Q2. Find the top 10 customers who spent the highest total amount.
select c.customer_unique_id,sum(p.payment_value) as total_amount
from customers_dataset c inner join orders_dataset o
on c.customer_id=o.customer_id inner join order_payments_dataset p
on o.order_id=p.order_id group by c.customer_unique_id order by
 total_amount desc limit 10;

 #Q3. Find the top 10 customers who purchased the highest number of different products.
 Select c.customer_unique_id,count(distinct i.product_id) as diff_Product_count from
customers_dataset c inner join orders_dataset o on c.customer_id=o.customer_id
inner join order_items_dataset i on o.order_id=i.order_id group by
c.customer_unique_id order by diff_product_count desc limit 10;

#4.Find the total number of one time customer.
with cust_ct as
(select c.customer_unique_id as customer,count(o.order_id) order_count 
from customers_dataset c inner join orders_dataset o on c.customer_id=o.customer_id
group by c.customer_unique_id having order_count=1)
select count(*) as one_time_cust_count from cust_ct;

#5. Find the average number of orders per customer.
select round(avg(order_count),2) from
(select c.customer_unique_id as customer,count(o.order_id) order_count 
from customers_dataset c inner join orders_dataset o
on c.customer_id=o.customer_id group by c.customer_unique_id)as avg_order;


#Q7. find the top 10 customer cities with the highest number of customers.
select customer_city,count(distinct customer_unique_id) as customer_count
from customers_dataset group by customer_city order by customer_count desc limit 10;

#Q8. Find the top 10 customer states with the highest number of customers
select customer_state,count(distinct customer_unique_id) as customer_count
from customers_dataset group by customer_state order by customer_count desc limit 10;

#Q9. find the total number of customers in each state.
select customer_state,count(distinct customer_unique_id) as customer_count
from customers_dataset group by customer_state order by customer_count;

#Q10. Find the total number of customers in each city.
select customer_city,count(distinct customer_unique_id) as customer_count
from customers_dataset group by customer_city order by customer_count;


 /*=================================================================================================
	                                  Revenue Analysis
==================================================================================================*/
#Q1. Find the total revenue generated in each year.
select year(o.order_purchase_date) as Order_year,sum(p.payment_value) as Revenue
from orders_dataset o inner join order_payments_dataset p on o.order_id=p.order_id
group by order_year order by order_year;


#Q2. Find the total revenue generated each month.
select date_format(o.order_purchase_date, "%Y-%m") as Rev_Month,
sum(p.payment_value) as Total_Revenue from orders_dataset o inner join 
order_payments_dataset p on o.order_id=p.order_id
group by Rev_Month order by Rev_Month;
 
#Q3. Find the top 10 product categories generating the highest revenue.
 select p.product_category_name as product_category,sum(i.price) revenue
 from order_items_dataset i inner join products_dataset p
 on i.product_id=p.product_id group by p.product_category_name
 order by revenue desc limit 10;

#Q4. Find the top 10 states generating the highest revenue.
select c.customer_state as state,sum(p.payment_value) as total_revenue 
from customers_dataset c inner join orders_dataset o on c.customer_id=o.customer_id
inner join order_payments_dataset p on o.order_id=p.order_id
group by state order by total_revenue desc limit 10;

#Q5. Find the top 10 cities generating the highest revenue.
select c.customer_city as city,sum(p.payment_value) as total_revenue 
from customers_dataset c inner join orders_dataset o on c.customer_id=o.customer_id
inner join order_payments_dataset p on o.order_id=p.order_id
group by city order by total_revenue desc limit 10;


#Q6. Find the average revenue per order.
select round(avg(revenue),2) as Avg_Revenue from
(select o.order_id as orders,sum(p.payment_value) as revenue
from orders_dataset o inner join order_payments_dataset p
on o.order_id=p.order_id group by orders) as order_Revenue;

#Q7. Find the average revenue per customer.
select round(avg(revenue),2) as Avg_Revenue from
(select c.customer_id as customers,sum(p.payment_value) as revenue
from customers_dataset c inner join orders_dataset o on c.customer_id=o.customer_id
inner join order_payments_dataset p on o.order_id=p.order_id group by c.customer_id) as cust_Revenue;

#Q8. Find the payment type generating the highest revenue.
select payment_type,sum(payment_value) as revenue from order_payments_dataset
group by payment_type order by sum(payment_value) desc;

#Q9. Find the cumulative (running) revenue by year.
with cumulative_rev as
(select year(o.order_purchase_date) as rev_year,sum(p.payment_value) as yearly_revenue
from orders_dataset o inner join order_payments_dataset p on o.order_id=p.order_id
group by year(o.order_purchase_date))
select rev_year,yearly_revenue,sum(yearly_revenue)
over(order by rev_year) as running_total from cumulative_rev;

#Q10. Find the cumulative (running) monthly revenue for each year.
with cumulative_Rev as
(select year(o.order_purchase_date) as rev_year,date_format(o.order_purchase_date,"%Y-%m") as rev_month,
sum(payment_value) as revenue from orders_dataset o inner join order_payments_dataset p
on o.order_id=p.order_id group by rev_year,rev_month order by rev_year)
select rev_year,rev_month,revenue,sum(revenue) over(partition by rev_year order by rev_month) running_total
from cumulative_rev;

/*=================================================================================================
	                                  Product Analysis
==================================================================================================*/

#Q1. Find the top 10 most sold products based on quantity sold.
select product_id,count(product_id) as product_count
from order_items_dataset group by product_id
order by product_count desc limit 10;

#Q2. Find the top 10 least sold products based on quantity sold.
select product_id,count(product_id) as product_count
from order_items_dataset group by product_id
order by product_count asc limit 10;

#Q3. Find the products that were never sold even once.
select p.product_id from products_dataset p left join
order_items_dataset i using(product_id) where i.product_id is null;


#Q4. Find the top 10 products generate the highest revenue.
select product_id,sum(price) as revenue from order_items_dataset
group by product_id order by revenue desc limit 10;

#Q5. Find the average price of each product.
select product_id,round(avg(price),2) as avg_price from
order_items_dataset group by product_id order by avg_price desc;
 
 #Q6. Find the top 10 product categories by total revenue.
 select p.product_category_name as category ,sum(i.price) as total_revenue from 
 products_dataset p inner join order_items_dataset i on p.product_id=i.product_id
 group by category order by total_revenue desc limit 10;
 

#Q7. Find the top 5 products by number of orders.
select product_id,count(distinct order_id) as order_count from
order_items_dataset group by product_id order by order_count desc limit 5;

#Q8. Find top 5 products categories with the highest number of products.
select product_category_name as product_category,count(product_id) as product_count
from products_dataset group by product_category_name order by product_count desc limit 5;

#Q9. Month wise top selling products (based on number of orders).
with monthly_analysis as
(select date_format(o.order_purchase_date," %Y-%m") as month,i.product_id,
count(distinct i.order_id) as order_count,dense_rank() 
over(partition by date_format(o.order_purchase_date," %Y-%m") order by count(distinct i.order_id) desc)
as top_selling_prod from orders_dataset o inner join order_items_dataset i
on o.order_id=i.order_id group by month,product_id)
select month,product_id,order_count from monthly_analysis
where top_selling_prod=1 order by month;


#Q10. Top 5 products categories with the highest number of orders.
select p.product_category_name as product_categroy,count(i.order_id) as order_count
from products_dataset p inner join order_items_dataset i
on p.product_id=i.product_id group by p.product_category_name
order by order_count desc limit 5;


/*=================================================================================================
	                                  Seller Analysis
==================================================================================================*/

#Q1. Find the top 10 sellers who received the highest number of orders.
select seller_id,count(distinct order_id) as order_count from sellers_dataset
inner join order_items_dataset using(seller_id) group by seller_id
order by order_count desc limit 10;

#Q2. Find the top 10 sellers generating the highest revenue.
select seller_id,sum(price) as revenue from sellers_dataset
inner join order_items_dataset using(seller_id) group by seller_id
order by revenue desc limit 10;

#Q3. Find the sellers who never sold any product.
select s.seller_id from sellers_dataset s left join
order_items_dataset i using(seller_id) where i.seller_id is null;

#Q4. Find the average number of order received by each seller.
With avg_order as
(select seller_id,count(distinct order_id) order_count from sellers_dataset
inner join order_items_dataset using(seller_id) group by seller_id)
select avg(order_count) as avg_orders from avg_order;


#Q5. Find the month-wise-top-performing seller based on revenue.
with top_seller as
(select date_format(o.order_purchase_date,"%Y-%m") as month,i.seller_id,sum(i.price) as revenue,
dense_rank() over(partition by date_format(o.order_purchase_date,"%Y-%m")
order by sum(i.price)) as sell_rnk from orders_dataset o inner join
order_items_dataset i on o.order_id=i.order_id group by month,seller_id)
select month,seller_id,revenue from top_seller where sell_rnk=1;

#Q6. Find the sellers whose average order value is above the overall average order value.
select seller_id,round(avg(price),2) as avg_value from order_items_dataset
group by seller_id having avg_value>( select avg(price) as overall_avg from order_items_dataset);

/*=================================================================================================
	                                  Order Analysis
==================================================================================================*/
#Q1. Find total orders placed each month.
select date_format(order_purchase_date,"%Y-%m") as month,count(order_id) as order_count
from orders_dataset group by date_format(order_purchase_date,"%Y-%m") order by month asc;

#Q2. Find the top 5 days with the highest number of orders.
select date_format(order_purchase_date,"%Y-%m-%d") as day,count(order_id) as order_count
from orders_dataset group by date_format(order_purchase_date,"%Y-%m-%d")
order by order_count desc limit 5;

#Q3. Find the percentage of order status by each order status.
select order_status,count(*) as order_count,
round(count(*)*100/(select count(*) from orders_dataset),2) as percentage
from orders_dataset group by order_status;

#Q4. Find the average delivery time for delivered orders.
select round(avg(datediff(order_delivered_customer_Date,order_purchase_date)),2)
as avg_delivery_day from orders_Dataset where order_status='delivered';

#Q5. Find the top 10 customers with the highest number of orders.
select customer_unique_id as customers,count(order_id) as order_count from customers_dataset
inner join orders_dataset using(customer_id) group by customer_unique_id
order by order_count desc limit 10;

#Q6. Find the month wise cancelled order count.
select * from orders_dataset where order_status like "can%";
select order_status,date_format(order_purchase_date,"%Y-%m") as month,
count(order_id) order_count from orders_dataset
group by 1,2 having order_status='canceled'
order by month asc;


/*=================================================================================================
	                                  Payment Analysis
==================================================================================================*/

#Q1. Find the total value by payment type.
select payment_type,sum(payment_value) as total_payment
from order_payments_dataset group by payment_type;

#Q2. Find the top 3 Payments type based on total revenue.
select payment_type,sum(payment_value) as total_revenue
from order_payments_dataset group by payment_type
order by total_revenue desc limit 3;

#Q3. Find the average payment value for each payment type.
select round(avg(total_payments),2) as avg_payment from
(select payment_type,sum(payment_value) total_payments from
order_payments_dataset group by payment_type) as payment_avg;

#Q4. Find the month wise total payment amount received.
select date_format(order_purchase_date, "%Y-%m") as month,
sum(payment_value) as total_payment from orders_dataset
inner join order_payments_dataset using(order_id)
group by date_format(order_purchase_date, "%Y-%m")
order by month;

#Q5. Find the average number of installments by payment type.
