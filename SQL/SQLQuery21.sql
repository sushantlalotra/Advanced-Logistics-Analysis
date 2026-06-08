-- SELECT TOP (10) [truck_id]
--      ,[month]
--      ,[trips_completed]
--      ,[total_miles]
--      ,[total_revenue]
--      ,[average_mpg]
--      ,[maintenance_events]
--      ,[maintenance_cost]
--      ,[downtime_hours]
--      ,[utilization_rate]
--  FROM [LogisticsDB].[dbo].[truck_utilization_metrics]

-- Query 1: Average Utilization Rate by Truck

-- SELECT truck_id, ROUND(AVG(utilization_rate), 3) AS AvgUtilization
-- FROM dbo.truck_utilization_metrics
-- GROUP BY truck_id
-- ORDER BY AvgUtilization DESC;

-- Query 2: Monthly Revenue Trend per Truck

-- SELECT truck_id, FORMAT(month, 'yyyy-MM') AS Month, ROUND(SUM(total_revenue), 3) AS MonthlyRevenue
-- FROM dbo.truck_utilization_metrics
-- GROUP BY truck_id, FORMAT(month, 'yyyy-MM')
-- ORDER BY truck_id, Month;

-- Query 3: Maintenance Cost vs Downtime

-- SELECT truck_id, ROUND(SUM(maintenance_cost), 3) AS TotalMaintenanceCost, ROUND(SUM(downtime_hours), 5) AS TotalDowntime
-- FROM dbo.truck_utilization_metrics
-- GROUP BY truck_id
-- ORDER BY TotalMaintenanceCost DESC;

-- Query 4: Trips Completed vs Revenue

-- SELECT truck_id, SUM(trips_completed) AS TotalTrips, ROUND(SUM(total_revenue), 3) AS TotalRevenue, ROUND(SUM(total_revenue) / NULLIF(SUM(trips_completed),0),2) AS RevenuePerTrip
-- FROM dbo.truck_utilization_metrics
-- GROUP BY truck_id
-- ORDER BY RevenuePerTrip DESC;