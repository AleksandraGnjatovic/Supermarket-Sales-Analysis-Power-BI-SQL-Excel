# Sales Analysis Project

## Dataset Overview
This dataset contains retail sales data. Each row represents a single transaction with information about the branch, customer, product, and sales amount. The dataset includes 14 columns and covers order date, customer type, branch, product, and reward points.

### Column Descriptions

| Column           | Description                                      |
|-----------------|--------------------------------------------------|
| SaleID          | Unique transaction identifier                     |
| Branch          | Sales branch (A, B, or C)                        |
| City            | City where the sale took place                    |
| CustomerType    | Customer type (Member or Normal)                 |
| ProductName     | Product name                                     |
| ProductCategory | Product category                                 |
| UnitPrice       | Price per unit                                   |
| Quantity        | Number of units purchased                        |
| Tax             | Tax amount                                       |
| TotalPrice      | Total amount (Quantity × UnitPrice + Tax)       |
| RewardPoints    | Reward points earned by the customer            |
| OrderDate       | Date of the order                                |
| Month           | Month extracted from OrderDate                   |
| Year            | Year extracted from OrderDate                    |

---

## Data Cleaning and Preparation

Before analysis, the dataset was cleaned and prepared:  
- Checked for missing or empty rows and removed where necessary  
- Handled missing values by filling or documenting them  
- Ensured correct data types for each column (e.g., date, numeric, text)  
- Extracted Month and Year from the OrderDate column to facilitate time-based analysis

---

## SQL Analysis

The `sales_analysis.sql` file contains SQL queries analyzing the dataset. Each query includes comments explaining its purpose and expected results. Example analyses:  

- Total sales by branch  
- Top 5 products by revenue  
- Sales by customer type  
- Sales trends by month/year  
- Reward points by customer type  

---

## Excel Pivot Tables

The `Excel/sales_pivot.xlsx` file contains pivot tables that visualize the results of the SQL analysis:  

1. Total sales by branch  
2. Top products by revenue  
3. Sales by customer type  
4. Sales trends by month/year  
5. Reward points by customer type  

**Visualization types:**  
- Bar charts for top products and top cities  
- Line charts for monthly sales trends  
- Pie charts for customer type and product category  

---

## Power BI Dashboard

The `PowerBI/sales_dashboard.pbix` file contains an interactive dashboard with slicers for:  
- Branch  
- City  
- Customer Type  

Visualizations include:  
- Top products by TotalPrice  
- Sales trends by month/year  
- Total sales and reward points (Card visuals)  
- Customer type and product category (Pie charts)  

---

## How to Use This Project

1. Open the CSV dataset in Excel or Power BI.  
2. Run SQL queries from `sales_analysis.sql` using SQLite, DuckDB, MySQL, or PostgreSQL.  
3. Explore pivot tables in `Excel/sales_pivot.xlsx` for visual insights.  
4. Open `PowerBI/sales_dashboard.pbix` to interact with the dashboard.  

---

## Conclusion

This project demonstrates the full workflow from raw data to analysis and visualization. Key skills showcased:  

- SQL analysis and aggregations  
- Pivot tables and Excel visualizations  
- Interactive Power BI dashboards  
- Business understanding and interpretation of results