-- SELECT TOP (10) [facility_id]
--      ,[facility_name]
--      ,[facility_type]
--      ,[city]
--      ,[state]
--      ,[latitude]
--      ,[longitude]
--      ,[dock_doors]
--      ,[operating_hours]
--  FROM [LogisticsDB].[dbo].[facilities]

-- Query 1: Facilities Count by State

-- SELECT state, COUNT(*) AS FacilityCount
-- FROM dbo.facilities
-- GROUP BY state
-- ORDER BY FacilityCount DESC;

-- Query 2: Average Dock Doors by Facility Type

-- SELECT facility_type, AVG(dock_doors) AS AvgDockDoors
-- FROM dbo.facilities
-- GROUP BY facility_type
-- ORDER BY AvgDockDoors DESC;

-- Query 3: Top 5 Facilities by Dock Doors

-- SELECT TOP 5 facility_name, city, state, dock_doors
-- FROM dbo.facilities
-- ORDER BY dock_doors DESC;

-- Query 4: Facility Distribution by Type

-- SELECT facility_type, COUNT(*) AS FacilityCount
-- FROM dbo.facilities
-- GROUP BY facility_type;