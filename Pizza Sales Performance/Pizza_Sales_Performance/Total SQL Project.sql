create table pizaa_sale
(
pizza_id	int,
order_id	int,
pizza_name_id	varchar(20),
quantity	int,
order_date	date,
order_time	time,
unit_price	numeric(5,2),
total_price	numeric(5,2),
pizza_size	varchar(5),
pizza_category	varchar(10),
pizza_ingredients	varchar(100),
pizza_name varchar(50)
)


SELECT * FROM pizza_sale;

alter table pizza_sale
add primary key (pizza_id);

-- ************ KPI's ************

-- 1. Total Revenue: The sum of the total price of all pizza orders.
select round(sum(total_price),0) as "Total-Revenue" from pizza_sale;

-- 2. Average Order Value: The average amount spent per order, calculated by dividing the total revenue by the total number of orders.
select sum(total_price) / count(distinct(order_id)) as "Average Order Value" from pizza_sale


-- 3. Total Pizzas Sold: The sum of the quantities of all pizzas sold.
select sum(quantity) as "Total Pizzas Sold" from pizza_sale;

-- 4. Total Orders: The total number of orders placed.
select count(distinct order_id) from pizza_sale
where order_id is not null;

-- 5. Average Pizzas Per Order: The average number of pizzas sold per order, calculated by dividing the total number of pizzas sold by the total number of orders.
select cast( cast(sum(quantity) as decimal(10,2)) / cast(count(distinct(order_id))as decimal(10,2)) as decimal(3,2))  as "Average Pizzas Per Order" from pizza_sale

-- ************ 1. Daily Trend for Total Orders: ************ 
-- Create a bar chart that displays the daily trend of total orders over a specific time period. This chart will help us identify any patterns or fluctuations in order volumes on a daily basis.

SELECT 
    TO_CHAR(order_date, 'Day') AS "Day_Name", 
    COUNT(DISTINCT order_id) AS "Total-Orders" 
FROM 
    pizza_sale 
GROUP BY 
    TO_CHAR(order_date, 'Day'),
    EXTRACT(ISODOW FROM order_date)
ORDER BY 
    EXTRACT(ISODOW FROM order_date);

-- ************ 2.Hourly Trend for Total Orders: ************ 
-- Create a line chart that illustrates the hourly trend of total orders throughout the day. This chart will allow us to identify peak hours or periods of high order activity.

select extract(hour from  order_time) as "Order_Time", count(distinct(order_id)) from pizza_sale
group by extract(hour from order_time)
order by "Order_Time" asc;

-- ************ 3.Percentage of Sales by Pizza Category: ************ 
-- Create a pie chart that shows the distribution of sales across different pizza categories. This chart will provide insights into the popularity of various pizza categories and their contribution to overall sales.

select pizza_category, round(sum(total_price)) as "Total Price",round(sum(total_price) *100 / (select sum(total_price) from pizza_sale),3) as "% Sales by Pizza Category" from pizza_sale
group by pizza_category;

select * from pizza_sale

-- **************** 4.Percentage of Sales by Pizza Size: ****************
-- Generate a pie chart that represents the percentage of sales attributed to different pizza sizes.  This chart will help us understand customer preferences for pizza sizes and their impact on sales.

select pizza_size, round(sum(total_price)) as "Total Price",round(sum(total_price) *100 / (select sum(total_price) from pizza_sale),3)
as "% Sales by Pizza Size" from pizza_sale
group by pizza_size;

-- **************** 5.Total Pizzas Sold by Pizza Category: ****************
-- Create a funnel chart that presents the total number of pizzas sold for each pizza category. This chart will allow us to compare the sales performance of different pizza categories.

select pizza_category, count(*) as "Total Pizzas" from pizza_sale
group by pizza_category; 

-- **************** 6.Top 5 Best Sellers by Total Pizzas Sold: ****************
-- Create a bar chart highlighting the top 5 best-selling pizzas based on the total number of pizzas sold.This chart will help us identify the most popular pizza options.

select pizza_name, count(*) as "Mostly sale pizzas" from pizza_sale
group by pizza_name
order by "Mostly sale pizzas" desc limit 5;

-- **************** 7.Bottom 5 Worst Sellers by Total Pizzas Sold: ****************
-- Create a bar chart showcasing the bottom 5 worst-selling pizzas based on the total number of pizzas sold. This chart will enable us to identify underperforming or less popular pizza options.

select pizza_name, count(*) as "Mostly sale pizzas" from pizza_sale
group by pizza_name
order by "Mostly sale pizzas" asc limit 5;