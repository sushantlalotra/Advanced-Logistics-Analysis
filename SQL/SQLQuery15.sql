-- SELECT TOP (10) [load_id]
--      ,[customer_id]
--      ,[route_id]
--      ,[load_date]
--      ,[load_type]
--      ,[weight_lbs]
--      ,[pieces]
--      ,[revenue]
--      ,[fuel_surcharge]
--      ,[accessorial_charges]
--      ,[load_status]
--      ,[booking_type]
--  FROM [LogisticsDB].[dbo].[loads]

-- Query 1: Total Revenue by Load Status

-- SELECT load_status, SUM(revenue) AS TotalRevenue
-- FROM dbo.loads
-- GROUP BY load_status;

-- CREATE VIEW vw_LoadRevenueByStatus AS
-- SELECT load_status, SUM(revenue) AS TotalRevenue
-- FROM dbo.loads
-- GROUP BY load_status;

-- Query 2: Average Weight by Load Type

-- SELECT load_type, AVG(weight_lbs) AS AvgWeight
-- FROM dbo.loads
-- GROUP BY load_type
-- ORDER BY AvgWeight DESC;

-- Query 3: Top 5 Customers by Load Revenue

-- SELECT TOP 5 customer_id, SUM(revenue) AS TotalRevenue
-- FROM dbo.loads
-- GROUP BY customer_id
-- ORDER BY TotalRevenue DESC;

-- Query 4: Monthly Load Revenue Trend

-- SELECT FORMAT(load_date, 'yyyy-MM') AS Month, SUM(revenue) AS MonthlyRevenue
-- FROM dbo.loads
-- GROUP BY FORMAT(load_date, 'yyyy-MM')
-- ORDER BY Month;

-- CREATE VIEW vw_MonthlyLoadRevenue AS
-- SELECT FORMAT(load_date, 'yyyy-MM') AS Month, SUM(revenue) AS MonthlyRevenue
-- FROM dbo.loads
-- GROUP BY FORMAT(load_date, 'yyyy-MM');

-- CREATE VIEW vw_TopLoadsByRevenue AS
-- SELECT TOP 10 load_id, revenue
-- FROM dbo.loads
-- ORDER BY revenue DESC;