-- SELECT TOP (10) [trailer_id]
--      ,[trailer_number]
--      ,[trailer_type]
--      ,[length_feet]
--      ,[model_year]
--      ,[vin]
--      ,[acquisition_date]
--      ,[status]
--      ,[current_location]
--  FROM [LogisticsDB].[dbo].[trailers]

-- Query 1: Trailer Count by Type

-- SELECT trailer_type, COUNT(*) AS TrailerCount
-- FROM dbo.trailers
-- GROUP BY trailer_type
-- ORDER BY TrailerCount DESC;

-- Query 2: Oldest Trailers in the Fleet

-- SELECT TOP 5 trailer_id, trailer_number, model_year, current_location
-- FROM dbo.trailers
-- ORDER BY model_year ASC;

-- Query 3: Trailers by Current Location

-- SELECT current_location, COUNT(*) AS TrailerCount
-- FROM dbo.trailers
-- GROUP BY current_location
-- ORDER BY TrailerCount DESC;

-- Query 4: Average Age of Active Trailers

-- SELECT AVG(DATEDIFF(YEAR, model_year, GETDATE())) AS AvgAgeYears
-- FROM dbo.trailers
-- WHERE status = 'Active';