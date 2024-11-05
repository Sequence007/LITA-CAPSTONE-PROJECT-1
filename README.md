# LITA-CAPSTONE-PROJECT-1
---
In this project, i was tasked with analyzing the sales performance of a retail store.

### Data Set
----
SALES DATA
[SALES DATA.xlsx](https://github.com/user-attachments/files/17633907/SALES.DATA.xlsx)

### Introduction
---
The goal is to produce an interactive Power BI dashboard that highlights the following findigs:
    1. Top-selling products
    2. Regional performance, and 
    3. Monthly sales trends.

### Getting Started
---
I carefully analyzed the raw dataset and realized that before i can determine the findings, i will have to determine the Total Sales.
  1. I created a column for the Total sales and Multiplied the Quantity by the Units sold.
  2. I carefully moved the data to pivot table and i was able to ascertain the Total sales by product, Total Sales by Region and Total Sales by Month

### Excel Features
---
The Key Features of the Project are listed below
  1. Total Sales By Product

<img width="224" alt="total sales by product" src="https://github.com/user-attachments/assets/c53150ba-8928-4163-9acb-641e9e920bc2">

<img width="410" alt="sum total sales by product" src="https://github.com/user-attachments/assets/a01bfa90-c581-4810-918a-0d0e7661196e">
  
  2. Total Sales By Region

<img width="215" alt="total sales by region" src="https://github.com/user-attachments/assets/c99a4482-7ec0-4ac2-97bc-f18e6d4584e3">

<img width="389" alt="sum total sales by region" src="https://github.com/user-attachments/assets/75a197d2-a311-4a24-bca4-ea39994feefc">

  3. Total Sales By Month

<img width="192" alt="total sales by month" src="https://github.com/user-attachments/assets/0dcd0d89-e832-41ff-bb3c-08e6380eada0">


<img width="405" alt="sum total sales by month" src="https://github.com/user-attachments/assets/55612b36-7d67-4ff6-96ca-dd1cf4781da8">



### SQL Features of the project
---
Key Insights were extracted using SQL, the insights are as follows

    1. I Retrieved the total sales for each product category.
    2. Finding the number of sales transactions in each region.
    3. Finding the highest selling products by total sales value.
    4. Calculating the Total revenue per product.
    5. Calculating monthly sales totals for the current year.
    6. Finding the top 5 customers by total purchase amount.
    7. Calculating the percentage of total sales contributed by each region.
    8. Identifying products with no sales in the last quarter.

```SQL
Select * From TABLE 1
Where condition = True
```
### Power BI Features of the Project
---
I represented all the data worked on Excel and Sql in Power Bi and the result are a follows:
![Sales Data](https://github.com/user-attachments/assets/6449f9a7-d18f-49cd-920f-ba1b881ae31f)


