-- SELECT TOP (10) [maintenance_id]
--     ,[truck_id]
--      ,[maintenance_date]
--      ,[maintenance_type]
--      ,[odometer_reading]
--      ,[labor_hours]
--      ,[labor_cost]
--      ,[parts_cost]
--      ,[total_cost]
--      ,[facility_location]
--      ,[downtime_hours]
--      ,[service_description]
--  FROM [LogisticsDB].[dbo].[maintenance_records]

-- Query 1: Total Maintenance Cost by Type

-- SELECT maintenance_type, ROUND(SUM(total_cost), 5) AS TotalMaintenanceCost
-- FROM dbo.maintenance_records
-- GROUP BY maintenance_type
-- ORDER BY TotalMaintenanceCost DESC;

-- Query 2: Average Downtime Hours by Maintenance Type

-- SELECT maintenance_type, ROUND(AVG(downtime_hours), 3) AS AvgDowntime
-- FROM dbo.maintenance_records
-- GROUP BY maintenance_type
-- ORDER BY AvgDowntime DESC;

-- Query 3: Top 5 Facilities by Total Maintenance Cost

-- SELECT TOP 5 facility_location, ROUND(SUM(total_cost), 3) AS TotalCost
-- FROM dbo.maintenance_records
-- GROUP BY facility_location
-- ORDER BY TotalCost DESC;

-- Query 4: Labor vs Parts Cost Ratio

-- SELECT maintenance_type, ROUND(SUM(labor_cost), 3) AS TotalLabor, ROUND(SUM(parts_cost), 3) AS TotalParts, ROUND(SUM(labor_cost) * 100.0 / SUM(parts_cost), 2) AS LaborToPartsRatio
-- FROM dbo.maintenance_records
-- GROUP BY maintenance_type;