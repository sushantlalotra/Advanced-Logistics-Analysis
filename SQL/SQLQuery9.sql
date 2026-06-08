-- SELECT TOP (10) [customer_id]
--    ,[customer_name]
--    ,[customer_type]
--    ,[credit_terms_days]
--    ,[primary_freight_type]
--    ,[account_status]
--    ,[contract_start_date]
--    ,[annual_revenue_potential]
-- FROM [LogisticsDB].[dbo].[customers]

-- Query 1: Total Annual Revenue Potential by Status
-- SELECT account_status, SUM(annual_revenue_potential) AS TotalRevenuePotential
-- FROM dbo.customers
-- GROUP BY account_status;

-- CREATE VIEW vw_CustomerRevenueByStatus AS
-- SELECT account_status, SUM(annual_revenue_potential) AS TotalRevenuePotential
-- FROM dbo.customers
-- GROUP BY account_status;

-- Query 2: Average Credit Terms by Customer Type
-- SELECT customer_type, AVG(credit_terms_days) AS AvgCreditDays
-- FROM dbo.customers
-- GROUP BY customer_type;

-- CREATE VIEW vw_AvgCreditTermsByType AS
-- SELECT customer_type, AVG(credit_terms_days) AS AvgCreditDays
-- FROM dbo.customers
-- GROUP BY customer_type;

-- Query 3: Top 5 Customers by Revenue Potential
-- SELECT TOP 5 customer_name, annual_revenue_potential
-- FROM dbo.customers
-- ORDER BY annual_revenue_potential DESC;

-- CREATE VIEW vw_TopCustomersByRevenue AS
-- SELECT TOP 10 customer_id, customer_name, annual_revenue_potential
-- FROM dbo.customers
-- ORDER BY annual_revenue_potential DESC;

-- Query 4: Active vs Inactive Customer Count
-- SELECT account_status, COUNT(*) AS CustomerCount
-- FROM dbo.customers
-- GROUP BY account_status;

-- CREATE VIEW vw_CustomerCountByStatus AS
-- SELECT account_status, COUNT(*) AS CustomerCount
-- FROM dbo.customers
-- GROUP BY account_status;