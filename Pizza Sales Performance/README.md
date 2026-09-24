# Pizza Sales Performance Analysis

This project analyzes a pizza sales dataset to uncover business trends, customer preferences, and performance KPIs. The work includes SQL-based exploratory analysis and a dashboard-style summary built from the results.

## Project Overview

The dataset contains pizza orders with details such as:
- pizza ID and order ID
- quantity sold
- order date and time
- pizza size, category, and name
- unit price and total price
- pizza ingredients

The goal is to answer business questions such as:
- What is the total revenue and average order value?
- Which pizza categories and sizes sell the most?
- What are the daily and hourly sales trends?
- Which pizzas are the top and bottom sellers?

## Folder Structure

```text
Pizza Project/
├── Data/
│   └── pizza_sales.csv
├── Pizza_Sales_Performance/
│   ├── Total SQL Project.sql
│   ├── Excel Dashboard.png
│   └── Dashboard Background.jpg
├── Proj. Output Images/
│   ├── Output (1).png
│   ├── Output (2).png
│   ├── Output (3).png
│   ├── Output (4).png
│   ├── Output (5).png
│   ├── Output (6).png
│   ├── Output (7).png
│   ├── Output (8).png
│   ├── Output (9).png
│   ├── Output (10).png
│   ├── Output (11).png
│   ├── Output (12).png
│   ├── Output (13).png
├── Project Scope & Problem.docx
├── README.md
```

## Key Files

- [Data/pizza_sales.csv](Data/pizza_sales.csv) — raw sales dataset used for the analysis
- [Pizza_Sales_Performance/Total SQL Project.sql](Pizza_Sales_Performance/Total%20SQL%20Project.sql) — SQL script with queries for key KPI calculations and trend analysis
- [Pizza_Sales_Performance/Excel Dashboard.png](Pizza_Sales_Performance/Excel%20Dashboard.png) — dashboard summary image for the pizza sales analysis
- [Proj. Output Images](Proj.%20Output%20Images) — generated visual outputs for charts and analysis results
- [Project Scope & Problem.docx](Project%20Scope%20%26%20Problem.docx) — project brief and problem statement

## Key Performance Metrics

From the project dashboard and SQL analysis, the business KPIs are:

- Total Revenue: $8,17,860
- Total Orders: 21,350
- Total Pizzas Sold: 49,574
- Average Order Value: $38.31
- Average Pizzas per Order: 2.32

## SQL Analysis Included

The SQL script covers:

1. Total Revenue
2. Average Order Value
3. Total Pizzas Sold
4. Total Orders
5. Average Pizzas per Order
6. Daily trend of total orders
7. Hourly trend of total orders
8. Percentage of sales by pizza category
9. Percentage of sales by pizza size
10. Total pizzas sold by category
11. Top 5 best sellers
12. Bottom 5 worst sellers

## Dashboard Highlights

The project dashboard visualizes:
- daily sales trend across the week
- hourly order pattern throughout the day
- pizza category contribution to revenue
- pizza size contribution to sales
- top and worst selling pizzas
- sales distribution by category and size

## Sample Business Insights

From the visual dashboard and analysis, the likely business findings include:
- Classic and Supreme pizzas contribute a large portion of total sales
- Largest revenue comes from a few core pizza categories and sizes
- Peak pizza orders occur during specific hours of the day and certain weekdays
- Best-selling pizzas can be used for targeted promotions and inventory planning
- Underperforming pizzas may need pricing, marketing, or menu adjustments

## How to Use

1. Open the CSV file in [Data/pizza_sales.csv](Data/pizza_sales.csv) to inspect the raw dataset.
2. Run the queries in [Pizza_Sales_Performance/Total SQL Project.sql](Pizza_Sales_Performance/Total%20SQL%20Project.sql) in a SQL environment such as PostgreSQL or MySQL-compatible tools.
3. Review the dashboard images in [Pizza_Sales_Performance/Excel Dashboard.png](Pizza_Sales_Performance/Excel%20Dashboard.png) and [Proj. Output Images](Proj.%20Output%20Images) for charts and visuals.
4. Use the results for business reporting, product strategy, and sales analysis.

## Conclusion

This project demonstrates how SQL and visual dashboarding can be used to transform transaction data into actionable business intelligence for a pizza restaurant. It is a strong example of sales analysis, category performance review, and KPI tracking.
