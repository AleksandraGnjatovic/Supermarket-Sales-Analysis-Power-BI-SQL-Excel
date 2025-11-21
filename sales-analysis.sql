/* ============================================================
   SALES ANALYSIS PROJECT — SQL QUERIES WITH EXPLANATIONS
   This file contains SQL queries used to analyze retail sales
   data including revenue, customer behavior, product insights,
   and trends over time.
   ============================================================ */

/* ------------------------------------------------------------
   1. Total number of transactions
   Purpose: Get total count of all sales entries in the dataset.
------------------------------------------------------------ */
SELECT COUNT(*) AS total_transactions
FROM sales;


/* ------------------------------------------------------------
   2. Total sales by branch
   Purpose: Compare performance of different store branches.
------------------------------------------------------------ */
SELECT Branch, 
       SUM(TotalPrice) AS total_sales
FROM sales
GROUP BY Branch
ORDER BY total_sales DESC;


/* ------------------------------------------------------------
   3. Sales by product category
   Purpose: Identify which product categories generate the most revenue.
------------------------------------------------------------ */
SELECT ProductCategory,
       SUM(TotalPrice) AS total_sales
FROM sales
GROUP BY ProductCategory
ORDER BY total_sales DESC;


/* ------------------------------------------------------------
   4. Top 5 products by revenue
   Purpose: Determine which products are the biggest revenue drivers.
------------------------------------------------------------ */
SELECT ProductName,
       SUM(TotalPrice) AS revenue
FROM sales
GROUP BY ProductName
ORDER BY revenue DESC
LIMIT 5;


/* ------------------------------------------------------------
   5. Average unit price by category
   Purpose: Understand pricing differences among categories.
------------------------------------------------------------ */
SELECT ProductCategory,
       AVG(UnitPrice) AS avg_unit_price
FROM sales
GROUP BY ProductCategory
ORDER BY avg_unit_price DESC;


/* ------------------------------------------------------------
   6. Total sales by customer type
   Purpose: Compare spending between Member and Normal customers.
------------------------------------------------------------ */
SELECT CustomerType,
       SUM(TotalPrice) AS total_sales
FROM sales
GROUP BY CustomerType;


/* ------------------------------------------------------------
   7. Monthly sales trend
   Purpose: Analyze seasonality and monthly sales variations.
------------------------------------------------------------ */
SELECT Month,
       SUM(TotalPrice) AS monthly_sales
FROM sales
GROUP BY Month
ORDER BY Month;


/* ------------------------------------------------------------
   8. Yearly sales trend
   Purpose: Compare revenue across different years.
------------------------------------------------------------ */
SELECT Year,
       SUM(TotalPrice) AS yearly_sales
FROM sales
GROUP BY Year
ORDER BY Year;


/* ------------------------------------------------------------
   9. Total reward points by customer type
   Purpose: See which customer group earns more loyalty points.
------------------------------------------------------------ */
SELECT CustomerType,
       SUM(RewardPoints) AS total_points
FROM sales
GROUP BY CustomerType
ORDER BY total_points DESC;


/* ------------------------------------------------------------
   10. Average quantity per transaction
   Purpose: Understand purchasing behavior (how much customers buy).
------------------------------------------------------------ */
SELECT AVG(Quantity) AS avg_quantity
FROM sales;