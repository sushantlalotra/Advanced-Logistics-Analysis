-- SELECT TOP (10) [incident_id]
--     ,[trip_id]
--      ,[truck_id]
--      ,[driver_id]
--      ,[incident_date]
--      ,[incident_type]
--      ,[location_city]
--      ,[location_state]
--      ,[at_fault_flag]
--      ,[injury_flag]
--      ,[vehicle_damage_cost]
--      ,[cargo_damage_cost]
--      ,[claim_amount]
--      ,[preventable_flag]
--      ,[description]
--  FROM [LogisticsDB].[dbo].[safety_incidents]

-- Query 1: Incident Count by Type

-- SELECT incident_type, COUNT(*) AS IncidentCount
-- FROM dbo.safety_incidents
-- GROUP BY incident_type
-- ORDER BY IncidentCount DESC;

-- Query 2: Total Claim Amount by State

-- SELECT location_state, ROUND(SUM(claim_amount), 3) AS TotalClaims
-- FROM dbo.safety_incidents
-- GROUP BY location_state
-- ORDER BY TotalClaims DESC;

-- Query 3: At-Fault vs Not-At-Fault Incidents

-- SELECT at_fault_flag, COUNT(*) AS IncidentCount, SUM(claim_amount) AS TotalClaims
-- FROM dbo.safety_incidents
-- GROUP BY at_fault_flag;

-- Query 4: Injury Incidents by Driver

-- SELECT driver_id, COUNT(*) AS InjuryIncidents
-- FROM dbo.safety_incidents
-- WHERE injury_flag = 1
-- GROUP BY driver_id
-- ORDER BY InjuryIncidents DESC;