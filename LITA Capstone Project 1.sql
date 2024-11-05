Create Database LITA_CAPSTONE_1

Select * from [dbo].[SalesData]

--1-Total Sales 4 Each Product Category--

Select 
	Product,
	SUM(Quantity) AS TotalSales
FROM 
	[dbo].[SalesData]
GROUP BY 
	Product
ORDER BY 
	TotalSales Desc

--2-Number Of Sales Transaction In Each Region--

SELECT
	Region,
	COUNT(*) AS NoOfSalesTransactions
FROM
	[dbo].[SalesData]
GROUP BY 
	Region
ORDER BY 
	NoOfSalesTransactions Desc

--In order to run the next step, we'd need our revenue column

ALTER TABLE [dbo].[SalesData]
ADD Revenue FLOAT

--Now, we update table. Since our revenue column is empty, we need to fill it up--

UPDATE SalesData
SET Revenue = Quantity * UnitPrice

--Now, we can go ahead to solve No. 3--
--3-Highest Selling Product By Total Sales Value--

SELECT Top 1
	Product,
	SUM(Revenue) AS TotalSalesValue
FROM 
	SalesData
GROUP BY 
	Product
ORDER BY 
	TotalSalesValue Desc

--4-Total Revenue Per Product--

SELECT 
	Product, 
	SUM(Revenue) AS TotalRevenuePerProduct
FROM 
	SalesData
GROUP BY 
	Product
ORDER BY 
	TotalRevenuePerProduct DESC

--5-Monthly Sales Totals 4 D Current Year--

Select * from SalesData

SELECT 
	MONTH(OrderDate) AS SalesMonth,
	SUM(Quantity) AS MonthlySalesTotal
FROM 
	SalesData
WHERE 
	YEAR(OrderDate) = YEAR(GETDATE())
GROUP BY 
	MONTH(OrderDate)
ORDER BY 
	SalesMonth

--6- top 5 customers by total purchase amount--

SELECT TOP 5 
	Customer_Id, 
	SUM(Revenue) AS TotalPurchaseAmount
FROM 
	SalesData
GROUP BY 
	Customer_Id
ORDER BY 
	TotalPurchaseAmount DESC

--7-percentage of total sales contributed by each region--
--Without '%'
SELECT 
	Region,
	SUM(Revenue) AS RegionalSales,
	(SUM(Revenue) / (SELECT SUM(Revenue) FROM SalesData) * 100) AS SalesPercentage
FROM 
	SalesData
GROUP BY 
	Region
ORDER BY
	RegionalSales Desc

--With '%'

SELECT 
	Region,
	SUM(Revenue) AS RegionalSales,
	CONCAT(ROUND(SUM(Revenue) / (Select SUM(Revenue) FROM SalesData) * 100, 2), '%') AS SalesPercentage
FROM
	SalesData 
GROUP BY
	Region
ORDER BY
	RegionalSales Desc

--8- Products with no sales in the last quarter--

SELECT 
	Product
FROM 
	SalesData
WHERE 
	Product NOT IN (
					SELECT 
					Product
					FROM 
					SalesData
					WHERE 
					OrderDate >= DATEADD(quarter, -1, GETDATE())
					)

Select * from SalesData

SELECT Product from SalesData
