# MIST 4610 Data Management Project

## Team Name:
#### The A-Team

## Team Members:
#### 1) Aidan Hanson - @D3rpCoder
#### 2) Jacob Hartline - @JacobH2001
#### 3) Avery Blalock - @AveB25
#### 4) Christian Rajkowski - @christianrajkowski

## Project Description:
#### The task is to model and build a relational database to help a private equity (PE) firm manage and analyze its portfolio of companies. The database will capture key financial data, performance metrics, and deal-related information for each company, allowing the firm to assess the value and success of both current and past investments. By accurately modeling these relationships and generating sample data, we can run queries that provide insights into the profitability and performance of portfolio companies, helping the PE firm make informed decisions about future deals and investments.

## Data Model
 #### Our model is based on the structure of a private equity (PE) firm managing multiple companies and their associated mergers and acquisitions (M&A) deals. The central entity is the Companies table, which represents the profiles of companies involved in various deals. Since each company can participate in multiple M&A deals, but each deal involves at least two companies (buyer and target), we have a many-to-many relationship between the Companies and M&A Deals tables, handled through a junction table.

#### Each M&A deal contains key financial data, which is captured in the CompanyFinancials table. This table includes pre- and post-deal financials such as revenue and net income, and has a one-to-many relationship with the M&A Deals table, allowing us to track the financial performance of each company involved in the deal.

#### Additionally, every M&A deal has a detailed valuation, which is represented in the DealValuationDetails table. This table includes metrics such as enterprise value, equity value, and the valuation method used, and it has a one-to-one relationship with the M&A Deals table to ensure each deal has a unique valuation breakdown.

#### Shareholder structures can change as a result of these deals, so we modeled this in the ShareholderDetails table. Each deal can affect multiple shareholders, establishing a one-to-many relationship between M&A Deals and ShareholderDetails. Similarly, M&A deals often require approvals from various regulatory agencies, captured in the RegulatoryApprovals table, which also has a one-to-many relationship with M&A Deals.

#### To track how deals are financed, we introduced the DealPaymentBreakdown table. This table provides a breakdown of the cash, stock, and debt components of each deal and has a one-to-one relationship with the M&A Deals table. Post-merger performance is crucial for assessing the success of a deal, so the MergerPerformance table tracks projected versus actual outcomes such as revenue and return on investment (ROI), maintaining a one-to-one relationship with the M&A Deals table.

#### Since every deal comes with its risks, the DealRiskFactors table captures various risks associated with each merger, creating a one-to-many relationship with M&A Deals. Each company may also have debt details that impact or are impacted by the deal, represented in the CompanyDebtDetails table, which has a one-to-many relationship with the Companies table.

#### Finally, many companies have a history of previous mergers, and this historical information is stored in the HistoricalMergers table, which tracks past deals and has a one-to-many relationship with the Companies table. This model provides a comprehensive view of how a PE firm can manage and analyze multiple companies, their financials, and the intricacies of each M&A deal.
![image](https://github.com/user-attachments/assets/0cadc4cc-2d00-4769-8236-1fb46253167c)


## Data Dictionary
<img width="467" alt="projecttable1" src="https://github.com/user-attachments/assets/7d6622ea-b0ea-425d-8d60-d9a9a411b880">
<img width="470" alt="projecttable2" src="https://github.com/user-attachments/assets/11ded38b-f6ee-4764-831a-7edcf0ec30da">
<img width="470" alt="projecttable3" src="https://github.com/user-attachments/assets/94a8c41a-110b-45a7-8c71-b762fdbb26dc">
<img width="470" alt="projecttable4" src="https://github.com/user-attachments/assets/e3d2e749-c1d4-4c46-ab89-3a85605e1808">
<img width="466" alt="projecttable5" src="https://github.com/user-attachments/assets/e984f052-d237-40eb-9551-48621f0ea4ff">
<img width="466" alt="projecttable6" src="https://github.com/user-attachments/assets/276ad745-3a2b-416e-a003-ef1807e161ef">
<img width="468" alt="projecttable7" src="https://github.com/user-attachments/assets/4668bee8-88c5-4d75-8aa8-e9a0aac283fc">
<img width="465" alt="projecttable8" src="https://github.com/user-attachments/assets/243fe330-7e57-466b-92c4-b9628974edaa">
<img width="468" alt="projecttable9" src="https://github.com/user-attachments/assets/4024218c-b5d9-4d90-8441-e1463ef4c079">
<img width="470" alt="projecttable10" src="https://github.com/user-attachments/assets/206f2066-9376-4f6d-85c0-24c5a79638f6">
<img width="471" alt="projecttable11" src="https://github.com/user-attachments/assets/710ce812-49df-4418-ae42-51db02b67585">
<img width="469" alt="projecttable12" src="https://github.com/user-attachments/assets/d461d658-f77a-4c5f-b627-d3d9d4a14070">

## Queries:
<img width="472" alt="querychecklist" src="https://github.com/user-attachments/assets/5ea1f101-8c04-45eb-8a8d-b4c48c7e1dc6">

#### Query 1:
#### This query identifies companies with positive net income, ranked in descending order by their profitability. It helps managers focus on high-performing companies that are already profitable. It also breaks down the companies by industry, which can be used to assess whether certain industries are outperforming others, guiding strategic investments or partnerships. Managers can prioritize acquisitions, investments, or collaborations with these financially healthy companies to reduce the risk associated with poor financial performance.


#### Query 2:
#### This query provides insights into shareholders whose deals yield high returns on investment (ROI), particularly for deals worth more than $1 million. It helps managers identify successful shareholders with a track record of profitable deals. Knowing which shareholders have strong performance can guide managers in seeking strategic partnerships or capital from investors with proven success in M&A. The use of a regular expression to filter by shareholder names can reveal patterns in certain segments, helping managers focus on a subset of shareholders for further business opportunities.


#### Query 3:
#### This query identifies companies with operating margins between 10% and 20%, offering a snapshot of companies with reasonable profitability. These companies are likely performing well but still have room for operational efficiency improvements. Managers can target these companies for acquisitions, partnerships, or investments to capitalize on their steady profitability while exploring ways to enhance margins through cost-saving initiatives or synergies. Understanding the operating margins across companies helps managers benchmark their own company's performance and identify areas for improvement relative to industry standards.


#### Query 4:
#### This query shows companies with the highest to lowest debt ratios: This query will be useful for providing insight into which companies have more favorable debt to revenue ratios. A manager may use this to decide whether or not their company wants to go through a merger with a particular company.


#### Query 5:
#### This SQL query fetches company names, financial years, current revenues, and previous year's revenues for companies involved in M&A. It joins the Company and CompanyFinancials tables and uses a subquery to get the prior year's revenue, filtering for companies with M&A deals. Results are ordered by company name and financial year.


#### Query 6:
#### Calculate the total deal value of all mergers for companies in a specific industry: This query provides a detailed overview of mergers and acquisitions within a specific industry, like "Technology." Understanding the volume of M&A activity in a given sector helps managers gauge the competitive landscape. Managers can also leverage the output from this query to communicate with investors about the state of the industry and the company’s positioning within it.


#### Query 7: 
#### This query is retrieves a list of companies along with their significant shareholders (those with more than 10% ownership) and the respective ownership percentages. This can be useful for understanding the ownership structure of companies, particularly identifying major stakeholders in a company.


#### Query 8:
#### This SQL query aims to analyze mergers and acquisitions (M&A) involving companies by identifying those with multiple risk factors. It retrieves the names of companies, the associated M&A deal names, and counts the number of risk factors linked to each deal. By joining the relevant tables—Companies, Companies_has_M&ADeals, M&ADeals, and DealRiskFactors—the query aggregates data to show only those companies and deals that have more than one risk factor, highlighting potential concerns in the M&A process.


#### Query 9: 
#### This SQL query retrieves details about mergers with high-risk factors, including the merger name, risk severity, mitigation plans, and actual revenue. It joins the M&ADeals, DealRiskFactors, and MergerPerformance tables, filtering for deals categorized as high risk.

#### Query 10: 
#### This Query identifies certain companies that are held back by regulatory approvals so that a manager knows how to make an informed decision based on how the company they may be looking at for a merger is looking in terms of their regulatory approvals. 











