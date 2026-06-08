-- SELECT TOP (10) [fuel_purchase_id]
--      ,[trip_id]
--      ,[truck_id]
--      ,[driver_id]
--      ,[purchase_date]
--      ,[location_city]
--      ,[location_state]
--      ,[gallons]
--      ,[price_per_gallon]
--      ,[total_cost]
--      ,[fuel_card_number]
--  FROM [LogisticsDB].[dbo].[fuel_purchases]

-- SELECT 
--    CASE WHEN driver_id IS NULL THEN 'Unassigned' ELSE driver_id
--    END AS DriverStatus,
--    COUNT(*) AS PurchaseCount
-- FROM dbo.fuel_purchases
-- GROUP BY CASE WHEN driver_id IS NULL THEN 'Unassigned' ELSE driver_id END;

-- Query 1: Total Fuel Cost by Driver

-- SELECT CASE WHEN driver_id IS NULL THEN 'Unassigned' ELSE driver_id
--    END AS DriverStatus,
--    ROUND(SUM(total_cost), 5) AS TotalFuelCost
-- FROM dbo.fuel_purchases
-- GROUP BY CASE WHEN driver_id IS NULL THEN 'Unassigned' ELSE driver_id END
-- ORDER BY TotalFuelCost DESC;

-- Query 2: Average Price per Gallon by State

-- SELECT location_state, ROUND(AVG(price_per_gallon), 5) AS AvgPrice
-- FROM dbo.fuel_purchases
-- GROUP BY location_state
-- ORDER BY AvgPrice DESC;

-- Query 3: Top 5 Cities by Total Fuel Cost

-- SELECT TOP 5 location_city, SUM(total_cost) AS TotalFuelCost
-- FROM dbo.fuel_purchases
-- GROUP BY location_city
-- ORDER BY TotalFuelCost DESC;

-- Query 4: Monthly Fuel Spend Trend

-- SELECT FORMAT(purchase_date, 'yyyy-MM') AS Month, SUM(total_cost) AS MonthlyFuelSpend
-- FROM dbo.fuel_purchases
-- GROUP BY FORMAT(purchase_date, 'yyyy-MM')
-- ORDER BY Month;