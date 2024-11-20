use cs_ach35338;

# Recurvie Query: Retrieves All subsidiaries of a Parent Company

WITH RECURSIVE Subsidiaries AS (
    SELECT 
        idCompany, 
        CompanyName, 
        idParentCompany
    FROM 
        Company
    WHERE 
        idParentCompany IS NULL

    UNION ALL

    SELECT 
        c.idCompany, 
        c.CompanyName, 
        c.idParentCompany
    FROM 
        Company c
    JOIN 
        Subsidiaries s ON c.idParentCompany = s.idCompany
)
SELECT * 
FROM Subsidiaries;

select sector from Company;


# Analyze Deal performance by sector
DELIMITER //
CREATE PROCEDURE AnalyzePerformanceBySector(IN sectorName VARCHAR(45))
BEGIN
    SELECT 
        Company.Sector,
        MnADeals.MergerName,
        AVG(MergerPerformance.ROI) AS AvgROI,
        SUM(MergerPerformance.actualRevenue) AS TotalActualRevenue
    FROM 
        Company
    JOIN 
        MnADeals ON Company.idCompany = MnADeals.idCompany
    JOIN 
        MergerPerformance ON MnADeals.idPerformance = MergerPerformance.idPerformance
    WHERE 
        Company.Sector = sectorName
    GROUP BY 
        Company.Sector;
END //
DELIMITER ;

-- Call the procedure
CALL AnalyzePerformanceBySector('Banking');
#other sectors include: software, medical, renewable, manufacturing, consumer goods, and hospitality



# forecast Revenue for a deal 
# estimated future revnues for a deal based on growth factor and its current revenue
DELIMITER //
CREATE PROCEDURE ForecastRevenue(IN dealName VARCHAR(45), IN growthFactor DECIMAL(5,2))
BEGIN
    SELECT 
        MnADeals.MergerName,
        MergerPerformance.actualRevenue,
        (MergerPerformance.actualRevenue * (1 + growthFactor)) AS ForecastedRevenue
    FROM 
        MnADeals
    JOIN 
        MergerPerformance ON MnADeals.idPerformance = MergerPerformance.idPerformance
    WHERE 
        MnADeals.MergerName = dealName;
END //
DELIMITER ;

-- Call the procedure
CALL ForecastRevenue('Merger with Green Energy', 0.10);
# deals include acquisition of tech innovations, merger with Green Energy, Takeover of Health Corp, Investment in Fintech Hub
# if you want to look for more use this query: 
select MergerName from MnADeals;


# Analyze Financials Across Mutloiple Companies
# use a CTE to calculate average revenue, EBITDA, and net income for all companies in the portfolio
WITH FinancialAverages AS (
    SELECT 
        AVG(CompanyFinancials.Revenue) AS AvgRevenue,
        AVG(CompanyFinancials.EBITDA) AS AvgEBITDA,
        AVG(CompanyFinancials.netIncome) AS AvgNetIncome
    FROM 
        CompanyFinancials
)
SELECT 
    Company.CompanyName,
    CompanyFinancials.Revenue,
    CompanyFinancials.EBITDA,
    CompanyFinancials.netIncome,
    FinancialAverages.AvgRevenue,
    FinancialAverages.AvgEBITDA,
    FinancialAverages.AvgNetIncome
FROM 
    Company
JOIN 
    CompanyFinancials ON Company.idCompany = CompanyFinancials.idCompany
CROSS JOIN 
    FinancialAverages
WHERE 
    CompanyFinancials.Revenue < FinancialAverages.AvgRevenue;

# Analyze Debt-To-Revenue Ratio
CREATE VIEW DebtToRevenue AS
SELECT 
    Company.CompanyName,
    SUM(CompanyDebtDetails.debtAmount) AS TotalDebt,
    SUM(CompanyFinancials.Revenue) AS TotalRevenue,
    (SUM(CompanyDebtDetails.debtAmount) / SUM(CompanyFinancials.Revenue)) AS DebtToRevenueRatio
FROM 
    Company
JOIN 
    CompanyDebtDetails ON Company.idCompany = CompanyDebtDetails.idCompany
JOIN 
    CompanyFinancials ON Company.idCompany = CompanyFinancials.idCompany
GROUP BY 
    Company.CompanyName;

-- Query the view
SELECT * 
FROM DebtToRevenue
ORDER BY DebtToRevenueRatio DESC;

