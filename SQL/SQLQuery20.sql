-- SELECT TOP (10) [trip_id]
--      ,[load_id]
--      ,[driver_id]
--      ,[truck_id]
--      ,[trailer_id]
--      ,[dispatch_date]
--      ,[actual_distance_miles]
--      ,[actual_duration_hours]
--      ,[fuel_gallons_used]
--      ,[average_mpg]
--      ,[idle_time_hours]
--      ,[trip_status]
--  FROM [LogisticsDB].[dbo].[trips]

-- Query 1: Total Distance and Duration by Truck

-- SELECT truck_id, SUM(actual_distance_miles) AS TotalMiles, ROUND(SUM(actual_duration_hours), 0) AS TotalHours
-- FROM dbo.trips
-- GROUP BY truck_id
-- ORDER BY TotalMiles DESC;

-- CREATE VIEW vw_TruckDistanceDuration AS
-- SELECT truck_id, SUM(actual_distance_miles) AS TotalMiles, SUM(actual_duration_hours) AS TotalHours
-- FROM dbo.trips
-- GROUP BY truck_id;

-- Query 2: Idle Time vs Fuel Usage

-- SELECT driver_id, ROUND(AVG(idle_time_hours), 2) AS AvgIdle, ROUND(AVG(fuel_gallons_used), 2) AS AvgFuel
-- FROM dbo.trips
-- GROUP BY driver_id
-- ORDER BY AvgIdle DESC;

-- Query 3: Monthly Trip Volume

-- SELECT FORMAT(dispatch_date, 'yyyy-MM') AS Month, COUNT(*) AS TripCount
-- FROM dbo.trips
-- GROUP BY FORMAT(dispatch_date, 'yyyy-MM')
-- ORDER BY Month;

-- CREATE VIEW vw_RevenuePerMile AS
-- SELECT t.trip_id, l.revenue / NULLIF(t.actual_distance_miles,0) AS RevenuePerMile
-- FROM dbo.trips t
-- JOIN dbo.loads l ON t.load_id = l.load_id;