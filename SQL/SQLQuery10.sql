-- SELECT TOP (10) [event_id]
--   ,[load_id]
--   ,[trip_id]
--   ,[event_type]
--   ,[facility_id]
--   ,[scheduled_datetime]
--   ,[actual_datetime]
--   ,[detention_minutes]
--   ,[on_time_flag]
--   ,[location_city]
--   ,[location_state]
-- FROM [LogisticsDB].[dbo].[delivery_events]

-- Query 1: Average Detention Minutes by Event Type

-- SELECT event_type, AVG(detention_minutes) AS AvgDetention
-- FROM dbo.delivery_events
-- GROUP BY event_type;

-- Query 2: On‑Time vs Delayed Events Count

-- SELECT on_time_flag, COUNT(*) AS EventCount
-- FROM dbo.delivery_events
-- GROUP BY on_time_flag;

-- Query 3: Top 5 Cities with Highest Detention

-- SELECT TOP 5 location_city, AVG(detention_minutes) AS AvgDetention
-- FROM dbo.delivery_events
-- GROUP BY location_city
-- ORDER BY AvgDetention DESC;

-- Query 4: Transit Performance by State

-- SELECT location_state, COUNT(*) AS TotalEvents, SUM(CASE WHEN on_time_flag = 1 THEN 1 ELSE 0 END) AS OnTimeEvents
-- FROM dbo.delivery_events
-- GROUP BY location_state;

-- Query 5: Scheduled vs Actual Delay

-- SELECT event_type, AVG(DATEDIFF(MINUTE, scheduled_datetime, actual_datetime)) AS AvgDelayMinutes
-- FROM dbo.delivery_events
-- GROUP BY event_type;