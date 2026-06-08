-- SELECT TOP (10) [driver_id]
--     ,[month]
--      ,[trips_completed]
--      ,[total_miles]
--      ,[total_revenue]
--      ,[average_mpg]
--      ,[total_fuel_gallons]
--      ,[on_time_delivery_rate]
--      ,[average_idle_hours]
--  FROM [LogisticsDB].[dbo].[driver_monthly_metrics]

-- Query 1: Total Revenue per Driver

-- SELECT driver_id, ROUND(SUM(total_revenue), 2) AS TotalRevenue
-- FROM dbo.driver_monthly_metrics
-- GROUP BY driver_id
-- ORDER BY TotalRevenue DESC;

-- Query 2: Average On‑Time Delivery Rate per Driver

-- SELECT driver_id, ROUND(AVG(on_time_delivery_rate), 5) AS AvgOnTimeRate
-- FROM dbo.driver_monthly_metrics
-- GROUP BY driver_id
-- ORDER BY AvgOnTimeRate DESC;

-- Query 3: Monthly Trend of Trips Completed

-- SELECT month, SUM(trips_completed) AS TotalTrips
-- FROM dbo.driver_monthly_metrics
-- GROUP BY month
-- ORDER BY month;

-- Query 4: Fuel Efficiency (Miles per Gallon)

-- SELECT driver_id, ROUND(AVG(average_mpg), 5) AS AvgMPG
-- FROM dbo.driver_monthly_metrics
-- GROUP BY driver_id
-- ORDER BY AvgMPG DESC;

-- Query 5: Idle Hours vs Revenue

-- SELECT driver_id, ROUND(AVG(average_idle_hours), 5) AS AvgIdle, SUM(total_revenue) AS TotalRevenue
-- FROM dbo.driver_monthly_metrics
-- GROUP BY driver_id
-- ORDER BY AvgIdle DESC;