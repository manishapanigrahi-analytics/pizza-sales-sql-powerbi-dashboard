# Pizza Sales SQL & Power BI Dashboard

This project analyzes a pizza restaurant’s sales data using SQL for data exploration and Power BI for interactive dashboarding. It showcases end‑to‑end skills from writing analytical queries to designing business-ready visuals.

## Project Overview:

The goal is to understand key performance metrics and sales patterns to support data‑driven decisions for a pizza business. The analysis focuses on revenue, order behavior, product performance, and time-based trends.

## Business Requirements:

The stakeholder wants to:
- Track overall sales performance (revenue, orders, pizzas sold).
- Understand customer purchasing behavior at daily and hourly levels.
- Identify which pizza categories, sizes, and individual pizzas drive sales.
- Detect underperforming pizzas for potential menu or marketing changes.[file:2]

## Key Metrics (KPIs):

Using SQL, the following core KPIs are calculated:
- **Total Revenue** – Sum of the total price of all pizza orders.
- **Average Order Value** – Total revenue divided by the number of orders.
- **Total Pizzas Sold** – Sum of quantities of all pizzas sold.
- **Total Orders** – Count of distinct orders placed.
- **Average Pizzas per Order** – Total pizzas sold divided by total orders.

These KPIs are surfaced in the Power BI dashboard for quick performance monitoring.

## Analytical Questions & Charts:

The project answers the following questions using SQL output visualized in Power BI:

- **Daily trend of total orders**  
  Bar chart showing orders by day to spot patterns and fluctuations.

- **Hourly trend of total orders**  
  Line chart showing orders by hour to identify peak ordering times.

- **Sales by pizza category**  
  Pie/funnel charts showing revenue and quantities by category (Classic, Supreme, Chicken, Veggie).

- **Sales by pizza size**  
  Pie chart displaying revenue contribution by size (L, M, S, XL, XXL).

- **Total pizzas sold by category**  
  Chart comparing volume sold for each category.

- **Top 5 best‑selling pizzas**  
  Bar chart of pizzas with the highest quantity sold.

- **Bottom 5 worst‑selling pizzas**  
  Bar chart of pizzas with the lowest quantity sold.

## Tech Stack:

- **SQL** – Data extraction and KPI calculation from the pizza sales table.
- **Power BI Desktop** – Data modeling and interactive dashboard creation.
- **Data Source** – Relational table containing order details, pizza types, categories, sizes, quantities, prices, and timestamps.

## Files in This Repository:

- `Pizza_Sales_Dashboard.pbix` – Power BI report file (dashboard).
- `pizza_sales_queries.sql` – SQL scripts for KPIs and chart datasets.
- `pizza_sales excel file.csv` – Data set
- `README.md` – Project documentation.

## Insights Highlight:

- Overall sales performance is strong, with high total revenue, a large number of orders, and an average of a little over 2 pizzas per order, showing that customers typically buy multiple items per visit.
- Orders peak during specific evening hours, indicating clear rush periods where staffing and inventory should be optimized.
​- Classic and Supreme categories, especially in Large size, contribute the highest share of revenue and volume, making them core drivers of the business.
​- XL and XXL sizes, along with certain niche pizzas in the bottom‑5 list, show relatively low demand, suggesting candidates for targeted promotions, bundling, or menu rationalization.
​- The top‑5 best sellers are consistently ordered across the year, while the worst‑selling pizzas remain underused, highlighting a clear opportunity to simplify the menu and focus on high‑performing products.

## Learning Outcomes:

This project demonstrates:

- Writing analytical SQL queries for KPIs and time‑series trends.
- Translating SQL outputs into effective business visuals.
- Building a sales performance dashboard suitable for portfolio presentation.
