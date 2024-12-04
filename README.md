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
![image](https://github.com/user-attachments/assets/1f2fb45f-5315-4055-aa5f-d3fecf1db853)



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
#### This query is particularly useful for analyzing corporate hierarchies by mapping relationships between parent companies and their subsidiaries. It helps identify all subsidiaries under a parent company, regardless of how deeply nested the relationships are, making it valuable for understanding the full scope of corporate structures. For example, multinational corporations with complex subsidiary networks can use this query to reveal the entire hierarchy, starting from the top-level parent company down to the smallest entities. In financial consolidation, it aids in aggregating revenue, expenses, or debt across all related entities, ensuring accurate reporting. Similarly, in regulatory compliance, it helps companies disclose all subsidiary relationships as required by law. This is critical during mergers and acquisitions, where understanding the full structure of a target company is essential for due diligence and deal evaluation. Furthermore, it supports risk assessment by helping organizations evaluate financial, legal, or reputational risks associated with their subsidiaries. The query also has applications in performance reporting, allowing parent companies to group and attribute metrics like revenue or ROI to their subsidiaries. When visualized in tools like Tableau, this data can form tree maps, organizational charts, or drill-down reports, providing an intuitive way to explore parent-subsidiary relationships dynamically. In essence, this query is a powerful tool for uncovering and analyzing the structural complexities of corporate entities.

<img width="351" alt="finalq1" src="https://github.com/user-attachments/assets/c60274bc-c628-4573-a12b-db065a2adeb5">
<img width="249" alt="finalq1 2" src="https://github.com/user-attachments/assets/c9780491-033e-4600-af33-a519487787ae">

#### Query 2:
#### The AnalyzePerformanceBySector stored procedure is a powerful tool for evaluating the performance of mergers and acquisitions (M&A) within a specific industry sector. It takes a sector name as input and provides key metrics, including the average return on investment (ROI) and the total actual revenue generated from mergers within that sector. By joining the Company, MnADeals, and MergerPerformance tables, this procedure consolidates data to deliver actionable insights about sector-specific performance. For example, calling the procedure with 'Banking' as the input will reveal how mergers in the banking sector have performed on average, both in terms of ROI and total revenue. This procedure can be applied to other sectors like software, medical, renewable energy, manufacturing, consumer goods, and hospitality, offering a tailored view of industry-specific trends. These insights are particularly valuable for decision-makers involved in strategic planning, helping them understand which sectors yield higher returns or contribute the most revenue. Additionally, this procedure can be used to identify underperforming sectors and drive more informed investment decisions. When integrated with visualization tools like Tableau, the results can be represented as bar charts or comparative graphs, allowing stakeholders to easily identify trends across sectors. Overall, this stored procedure simplifies the analysis of sectoral performance in M&A activities, enabling businesses to make data-driven decisions.

<img width="534" alt="finalq2" src="https://github.com/user-attachments/assets/3fc667af-5e21-400c-b60a-8d1d8eb86bf1">
<img width="244" alt="finalq2 2" src="https://github.com/user-attachments/assets/75060800-d9c5-4553-8212-f71119dbe9d3">

#### Query 3:
#### The ForecastRevenue stored procedure is designed to forecast future revenue for a specific merger or acquisition deal based on a given growth factor. The procedure takes two input parameters: the name of the deal (dealName) and the growth factor (growthFactor) expressed as a decimal percentage. It retrieves the actual revenue for the specified deal from the MergerPerformance table and calculates the forecasted revenue by applying the growth factor to the actual revenue. This is achieved through a multiplication operation where the actual revenue is increased by (1 + growthFactor). This stored procedure is particularly useful for scenario analysis, enabling decision-makers to estimate future financial performance based on different growth assumptions. For example, calling the procedure with a growthFactor of 0.10 (10%) for the deal 'Merger_1' provides the forecasted revenue if the revenue grows by 10%. The flexibility of specifying both the deal and the growth factor allows analysts to evaluate the potential revenue impact of various deals under different growth scenarios. By calling the procedure with specific deal names, such as 'Acquisition of Tech Innovations' or 'Merger with Green Energy', users can compare forecasted revenues across deals and prioritize opportunities with higher potential growth. This procedure can also be paired with tools like Tableau to visualize forecasted revenue trends for multiple deals, providing a clear and actionable view of financial projections. Overall, this stored procedure simplifies revenue forecasting for mergers and acquisitions, making it a valuable tool for financial planning and strategic decision-making.

![image](https://github.com/user-attachments/assets/73730283-6803-4821-8b74-1e6b2881622a)


#### Query 4:
#### The provided query uses a Common Table Expression (CTE) named FinancialAverages to calculate the average revenue, EBITDA, and net income across all companies in the portfolio. It then identifies companies whose revenue falls below the portfolio-wide average revenue. By joining the Company table with CompanyFinancials and cross-joining the FinancialAverages CTE, the query provides a detailed comparison of each company's financial performance against the calculated averages. This query is particularly useful for identifying underperforming companies within a portfolio. By highlighting companies with below-average revenue, it allows analysts to focus on entities that may require additional support, restructuring, or other strategic interventions. The inclusion of EBITDA and net income alongside revenue helps provide a more comprehensive view of each company's financial health. For instance, a company with below-average revenue but above-average EBITDA or net income might indicate strong operational efficiency despite low revenue. The query results can be visualized effectively using tools like Tableau. For example, a scatter plot could compare each company’s revenue to the portfolio average, with additional dimensions like EBITDA or net income represented through color or size. Alternatively, a bar chart could rank companies by revenue, emphasizing those below the average threshold. This query is a valuable tool for financial analysts and portfolio managers, enabling them to identify performance gaps and make data-driven decisions to enhance overall portfolio performance.

<img width="533" alt="finalq4" src="https://github.com/user-attachments/assets/9b85f59f-38cd-471b-882e-7e79f03702be">
<img width="523" alt="finalq4 2" src="https://github.com/user-attachments/assets/fc6b52fc-b635-43cd-87bf-ce188cd24d53">

#### Query 5:
#### This SQL query fetches company names, financial years, current revenues, and previous year's revenues for companies involved in M&A. It joins the Company and CompanyFinancials tables and uses a subquery to get the prior year's revenue, filtering for companies with M&A deals. Results are ordered by company name and financial year.

![image](https://github.com/user-attachments/assets/1b4123dc-0252-4749-bc2b-14f87a2280d5)
