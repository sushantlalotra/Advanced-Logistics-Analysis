-- SELECT TOP (10) [truck_id]
--      ,[unit_number]
--      ,[make]
--      ,[model_year]
--      ,[vin]
--      ,[acquisition_date]
--      ,[acquisition_mileage]
--      ,[fuel_type]
--      ,[tank_capacity_gallons]
--      ,[status]
--      ,[home_terminal]
--  FROM [LogisticsDB].[dbo].[trucks]

-- Query 1: Average Tank Capacity by Fuel Type

-- SELECT fuel_type, AVG(tank_capacity_gallons) AS AvgTankCapacity
-- FROM dbo.trucks
-- GROUP BY fuel_type;

-- Query 2: Oldest Trucks in Service

-- SELECT TOP 5 truck_id, unit_number, make, model_year, status, home_terminal
-- FROM dbo.trucks
-- ORDER BY model_year ASC;

-- Query 3: Average Acquisition Mileage by Make

-- SELECT make, AVG(acquisition_mileage) AS AvgAcquisitionMileage
-- FROM dbo.trucks
-- GROUP BY make
-- ORDER BY AvgAcquisitionMileage DESC;