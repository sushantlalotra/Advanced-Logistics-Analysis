-- SELECT TOP (10) [route_id]
--     ,[origin_city]
--      ,[origin_state]
--      ,[destination_city]
--      ,[destination_state]
--      ,[typical_distance_miles]
--      ,[base_rate_per_mile]
--      ,[fuel_surcharge_rate]
--      ,[typical_transit_days]
--  FROM [LogisticsDB].[dbo].[routes]

-- Query 1: Average Distance by Origin State

-- SELECT origin_state, AVG(typical_distance_miles) AS AvgDistance
-- FROM dbo.routes
-- GROUP BY origin_state
-- ORDER BY AvgDistance DESC;

-- Query 2: Top 5 Most Expensive Routes (Base Rate per Mile)

-- SELECT TOP 5 route_id, origin_city, destination_city, base_rate_per_mile
-- FROM dbo.routes
-- ORDER BY base_rate_per_mile DESC;

-- Query 3: Revenue Potential per Route (Estimated)

-- SELECT route_id, typical_distance_miles * base_rate_per_mile AS EstimatedRevenue
-- FROM dbo.routes
-- ORDER BY EstimatedRevenue DESC;