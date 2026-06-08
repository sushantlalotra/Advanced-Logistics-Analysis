-- SELECT TOP (10) [driver_id]
--      ,[first_name]
--      ,[last_name]
--      ,[hire_date]
--      ,[termination_date]
--      ,[license_number]
--      ,[license_state]
--      ,[date_of_birth]
--      ,[home_terminal]
--      ,[employment_status]
--      ,[cdl_class]
--      ,[years_experience]
--  FROM [LogisticsDB].[dbo].[drivers]

-- Query 1: Active vs Terminated Driver Count

-- SELECT employment_status, COUNT(*) AS DriverCount
-- FROM dbo.drivers
-- GROUP BY employment_status;

-- Query 2: Average Years of Experience by Status

-- SELECT employment_status, AVG(years_experience) AS AvgExperience
-- FROM dbo.drivers
-- GROUP BY employment_status;

-- Query 3: Drivers per License State

-- SELECT license_state, COUNT(*) AS DriverCount
-- FROM dbo.drivers
-- GROUP BY license_state
-- ORDER BY DriverCount DESC;

-- Query 4: Recently Hired Drivers Still Active

-- SELECT driver_id, first_name, last_name, hire_date
-- FROM dbo.drivers
-- WHERE hire_date >= '2020-01-01'
-- AND employment_status = 'Active';

-- Query 5: Longest Tenured Active Drivers

-- SELECT TOP 5 driver_id, first_name, last_name, hire_date, years_experience
-- FROM dbo.drivers
-- WHERE employment_status = 'Active'
-- ORDER BY hire_date ASC;