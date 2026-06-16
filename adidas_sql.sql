use adidas_sales;
select *from adidas_sales_dataset_rows;


#Total Records Count
SELECT COUNT(*) AS Total_Records
FROM adidas_sales_dataset_rows;

#Total Revenue

SELECT SUM(Total_Revenue) AS Total_Revenue
FROM adidas_sales_dataset_rows;

#Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM adidas_sales_dataset_rows;

#Top 5 Products by Revenue
SELECT Product_Name,
       SUM(Total_Revenue) AS Revenue
FROM adidas_sales_dataset_rows
GROUP BY Product_Name
ORDER BY Revenue DESC
LIMIT 5;

#Category-wise Sales

SELECT Category,
       SUM(Total_Revenue) AS Revenue
FROM adidas_sales_dataset_rows
GROUP BY Category;

#Region-wise Profit
SELECT Region,
       SUM(Profit) AS Profit
FROM adidas_sales_dataset_rows
GROUP BY Region
ORDER BY Profit DESC;

#Country-wise Revenue
SELECT Country,
       SUM(Total_Revenue) AS Revenue
FROM adidas_sales_dataset_rows
GROUP BY Country
ORDER BY Revenue DESC;

#Monthly Revenue Trend
SELECT Month,
       SUM(Total_Revenue) AS Revenue
FROM adidas_sales_dataset_rows
GROUP BY Month;

#Sales Channel Performance
SELECT Sales_Channel,
       SUM(Total_Revenue) AS Revenue,
       SUM(Profit) AS Profit
FROM adidas_sales_dataset_rows
GROUP BY Sales_Channel;

#Highest Profit Order
SELECT *
FROM adidas_sales_dataset_rows
ORDER BY Profit DESC
LIMIT 1;

#Average Discount
SELECT AVG(Discount_Percentage) AS Avg_Discount
FROM adidas_sales_dataset_rows;

#Top 10 Cities by Revenue

SELECT City,
       SUM(Total_Revenue) AS Revenue
FROM adidas_sales_dataset_rows
GROUP BY City
ORDER BY Revenue DESC
LIMIT 10;


#top selling product
SELECT Product_Name,
       SUM(Total_Revenue) AS Revenue
FROM adidas_sales_dataset_rows
GROUP BY Product_Name
ORDER BY Revenue DESC
LIMIT 5;