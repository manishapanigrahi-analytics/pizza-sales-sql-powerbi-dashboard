select * from pizza_sales_data
where pizza_id = 1 and order_id = 1;

select SUM(total_price) as Total_Revenue from pizza_sales_data 

select SUM(total_price)/Count(Distinct order_id) as Average_Order_value from pizza_sales_data

select Sum(quantity) as Total_Pizzas_Sold from pizza_sales_data

select count(distinct order_id) as Total_orders from pizza_sales_data

select cast(cast(sum(quantity) as decimal(10,2))/
cast(count(distinct order_id) as decimal(10,2)) as decimal(10,2)) as Average_pizzas_per_order from pizza_sales_data

select cast(sum(quantity)/count(distinct order_id) as decimal(10,2)) as Average_pizzas_per_order from pizza_sales_data

--Daily Trends for total orders
select Datename(DW, order_date) as order_day, count(distinct order_id) as Total_Orders from pizza_sales_data
group by Datename(DW, order_date)

--Hourly trends for total orders

select Datepart(Hour, order_time) as order_hours, count(distinct order_id) as Total_orders from pizza_sales_data
group by Datepart(Hour, order_time)
order by Datepart(Hour, order_time)

--Percentage of sales by pizza category

select * from pizza_sales_data

select pizza_category, sum(total_price)*100/(select sum(total_price) from pizza_sales_data where month(order_date) = 1) as percentage_sales
from pizza_sales_data
where month(order_date) = 1
group by pizza_category

--Percentage of sales by pizza size

select pizza_size, cast(sum(total_price)*100/(select sum(total_price) from pizza_sales_data) as decimal(10,2)) as percentage_sales
from pizza_sales_data
group by pizza_size
order by percentage_sales DESC

--Total pizzas sold by pizza category

select pizza_category, sum(quantity) as Total_pizzas_sold from pizza_sales_data
group by pizza_category
order by Total_pizzas_sold ASC

--Top 5 Best Sellers by Total Pizzas Sold

select TOP 5 pizza_name, sum(quantity) as Total_pizzas_sold 
from pizza_sales_data
group by pizza_name
order by sum(quantity) DESC

--Bottom  5 Worst Sellers by Total Pizzas Sold

select TOP 5 pizza_name, sum(quantity) as Total_pizzas_sold 
from pizza_sales_data
group by pizza_name
order by sum(quantity) ASC