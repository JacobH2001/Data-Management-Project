use cs_ach35338;

INSERT INTO Companies (idCompanies, CompanyName, Industry, Sector, HQLocation, YearFounded, idParentCompany) 
VALUES 
(1, 'TechCorp', 'Technology', 'Software', 'San Francisco', '1998', NULL), 
(2, 'FinServe', 'Finance', 'Banking', 'New York', '1975', 1),
(3, 'HealthFirst', 'Healthcare', 'Medical', 'Boston', '2005', NULL),
(4, 'GreenEnergy', 'Energy', 'Renewable', 'Seattle', '2010', NULL),
(5, 'EduTech', 'Education', 'Software', 'Austin', '2012', NULL),
(6, 'AutoMoto', 'Automotive', 'Manufacturing', 'Detroit', '1985', NULL),
(7, 'RetailCo', 'Retail', 'Consumer Goods', 'Chicago', '1990', NULL),
(8, 'FoodChain', 'Food Services', 'Hospitality', 'Atlanta', '2000', NULL),
(9, 'BioHealth', 'Biotechnology', 'Medical', 'San Diego', '2009', 3),
(10, 'SecureFin', 'Finance', 'Banking', 'London', '2015', 2);

INSERT INTO M&ADeals (idDeal, MergerName, dealStage, dealDate, dealValue, idCompanies, idValuation, idShareholder, idPerformance) 
VALUES 
(1, 'TechCorp-FinServe Merger', 'Completed', '2024-01-15', 500000000, 1, 1, 1, 1),
(2, 'HealthFirst-FinServe Acquisition', 'Pending', '2024-05-20', 300000000, 3, 2, 2, 2),
(3, 'GreenEnergy-EduTech Merger', 'Completed', '2024-06-25', 200000000, 4, 3, 3, 3),
(4, 'AutoMoto-RetailCo Acquisition', 'Pending', '2024-07-10', 400000000, 6, 4, 4, 4),
(5, 'FoodChain-BioHealth Merger', 'Completed', '2024-08-01', 250000000, 8, 5, 5, 5),
(6, 'SecureFin-RetailCo Acquisition', 'Failed', '2024-03-11', 100000000, 10, 6, 6, 6),
(7, 'BioHealth-FoodChain Acquisition', 'Completed', '2024-04-05', 150000000, 9, 7, 7, 7),
(8, 'EduTech-GreenEnergy Merger', 'Pending', '2024-09-15', 350000000, 5, 8, 8, 8),
(9, 'TechCorp-AutoMoto Acquisition', 'Completed', '2024-02-20', 600000000, 1, 9, 9, 9),
(10, 'HealthFirst-SecureFin Merger', 'Pending', '2024-10-10', 700000000, 3, 10, 10, 10);

INSERT INTO Companies_has_M&ADeals (Companies_idCompanies, M&ADeals_idDeal) 
VALUES 
(1, 1), 
(2, 1),
(3, 2),
(4, 3),
(5, 3),
(6, 4),
(7, 4),
(8, 5),
(9, 5),
(10, 6),
(6, 9),
(9, 7),
(3, 10);

INSERT INTO DealValuationDetails (idValuation, enterpriseValue, equityValue, valuationMethod) 
VALUES 
(1, 600000000, 500000000, 'Discounted Cash Flow'), 
(2, 350000000, 300000000, 'Comparable Company Analysis'),
(3, 250000000, 200000000, 'Market Multiples'),
(4, 450000000, 400000000, 'Net Asset Value'),
(5, 275000000, 225000000, 'Transaction Comparables'),
(6, 150000000, 100000000, 'Sum of the Parts'),
(7, 175000000, 150000000, 'Leveraged Buyout'),
(8, 300000000, 250000000, 'Cost Approach'),
(9, 650000000, 600000000, 'Future Value'),
(10, 750000000, 700000000, 'Enterprise Value');

INSERT INTO RegulatoryApprovals (idApproval, regulatoryAgencyName, approvalStatus, approvalDate, M&ADeals_idDeal) 
VALUES 
(1, 'Federal Trade Commission', 'Approved', '2024-01-10', 1), 
(2, 'Department of Justice', 'Pending', NULL, 2),
(3, 'European Commission', 'Approved', '2024-02-01', 3),
(4, 'Securities and Exchange Commission', 'Rejected', '2024-03-15', 4),
(5, 'Financial Conduct Authority', 'Approved', '2024-04-18', 5),
(6, 'Department of Justice', 'Rejected', '2024-05-20', 6),
(7, 'Federal Trade Commission', 'Approved', '2024-06-25', 7),
(8, 'European Commission', 'Pending', NULL, 8),
(9, 'Securities and Exchange Commission', 'Pending', NULL, 9),
(10, 'Federal Trade Commission', 'Approved', '2024-07-20', 10);

INSERT INTO DealPaymentBreakdown (idPayment, cashComponent, stockComponent, debtAssumption, idDeal) 
VALUES 
(1, 300000000, 200000000, 0, 1), 
(2, 150000000, 100000000, 50000000, 2),
(3, 100000000, 50000000, 50000000, 3),
(4, 200000000, 150000000, 50000000, 4),
(5, 125000000, 100000000, 25000000, 5),
(6, 50000000, 50000000, 50000000, 6),
(7, 75000000, 75000000, 0, 7),
(8, 175000000, 175000000, 0, 8),
(9, 275000000, 225000000, 50000000, 9),
(10, 350000000, 300000000, 50000000, 10);

INSERT INTO DealRiskFactors (idRisk, riskDescription, riskSeverity, mitigationPlan, M&ADeals_idDeal) 
VALUES 
(1, 'Market Volatility', 'High', 'Hedge against currency fluctuations', 1), 
(2, 'Regulatory Risk', 'Medium', 'Increase legal scrutiny', 2),
(3, 'Cultural Differences', 'Low', 'Cross-cultural training programs', 3),
(4, 'Debt Load', 'High', 'Restructure debt post-acquisition', 4),
(5, 'Political Instability', 'Medium', 'Engage in government relations', 5),
(6, 'Currency Risk', 'High', 'Hedge with derivatives', 6),
(7, 'Integration Challenges', 'Medium', 'Develop integration roadmap', 7),
(8, 'Technological Risks', 'Low', 'Update legacy systems', 8),
(9, 'Regulatory Compliance', 'High', 'Consult legal team', 9),
(10, 'Financial Uncertainty', 'High', 'Prepare contingency plans', 10);

INSERT INTO ShareholderDetails (idShareholder, shareholderName, ownershipPercentage, stakeType) 
VALUES 
(1, 'John Doe', 15, 'Preferred'), 
(2, 'Jane Smith', 25, 'Common'),
(3, 'Michael Johnson', 20, 'Preferred'),
(4, 'Emily Davis', 30, 'Common'),
(5, 'Robert Brown', 10, 'Preferred'),
(6, 'Linda White', 35, 'Common'),
(7, 'David Miller', 40, 'Preferred'),
(8, 'Susan Wilson', 45, 'Common'),
(9, 'James Moore', 50, 'Preferred'),
(10, 'Patricia Taylor', 55, 'Common');

INSERT INTO MergerPerformance (idPerformance, projectedRevenue, actualRevenue, ROI) 
VALUES 
(1, 1000000000, 950000000, 8), 
(2, 850000000, 820000000, 7),
(3, 500000000, 480000000, 6),
(4, 1200000000, 1100000000, 10),
(5, 850000000, 820000000, 7),
(6, 600000000, 590000000, 5),
(7, 950000000, 920000000, 9),
(8, 700000000, 680000000, 6),
(9, 950000000, 920000000, 9),
(10, 1100000000, 1050000000, 8);

INSERT INTO CompanyDebtDetails (idDebt, debtType, debtAmount, maturityDate, Companies_idCompanies) 
VALUES 
(1, 'Corporate Bond', 100000000, '2030-12-31', 1), 
(2, 'Loan', 50000000, '2027-05-15', 2),
(3, 'Convertible Bond', 75000000, '2029-06-30', 3),
(4, 'Mortgage', 125000000, '2035-09-01', 4),
(5, 'Term Loan', 60000000, '2026-08-25', 5),
(6, 'Credit Facility', 80000000, '2032-02-20', 6),
(7, 'Corporate Bond', 120000000, '2028-11-15', 7),
(8, 'Term Loan', 50000000, '2025-03-10', 8),
(9, 'Mortgage', 100000000, '2030-01-05', 9),
(10, 'Credit Facility', 150000000, '2031-12-20', 10);

INSERT INTO CompanyFinancials (idFinancial, financialYear, Revenue, netIncome, EBITDA, Companies_idCompanies, M&ADeals_idDeal) 
VALUES 
(1, 2023, 2000000000, 300000000, 400000000, 1, 1), 
(2, 2023, 1500000000, 250000000, 350000000, 2, 1),
(3, 2024, 1200000000, 200000000, 300000000, 3, 2),
(4, 2023, 2200000000, 400000000, 500000000, 4, 3),
(5, 2024, 1800000000, 350000000, 450000000, 5, 4),
(6, 2024, 1600000000, 300000000, 400000000, 6, 5),
(7, 2024, 2500000000, 500000000, 600000000, 7, 6),
(8, 2023, 1400000000, 280000000, 350000000, 8, 7),
(9, 2023, 2000000000, 450000000, 550000000, 9, 8),
(10, 2024, 2400000000, 470000000, 600000000, 10, 9);

INSERT INTO HistoricalMergers (idHistory, prevDealName, prevDealDate, prevDealValue, Companies_idCompanies) 
VALUES 
(1, 'TechCorp-SoftWareCo Merger', '2020-07-15', 450000000, 1), 
(2, 'FinServe-FinBank Acquisition', '2019-09-25', 300000000, 2),
(3, 'HealthFirst-BioHealth Acquisition', '2021-11-10', 200000000, 3),
(4, 'GreenEnergy-EnviroTech Merger', '2020-05-18', 150000000, 4),
(5, 'EduTech-KnowledgeCorp Acquisition', '2022-08-20', 250000000, 5),
(6, 'AutoMoto-MachineryCo Merger', '2021-12-30', 400000000, 6),
(7, 'RetailCo-ShopMart Acquisition', '2019-06-28', 350000000, 7),
(8, 'FoodChain-CuisineCo Merger', '2021-04-05', 180000000, 8),
(9, 'BioHealth-PharmaTech Acquisition', '2022-03-15', 220000000, 9),
(10, 'SecureFin-GlobalBank Merger', '2021-09-25', 500000000, 10);


