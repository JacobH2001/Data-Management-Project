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
![image](https://github.com/user-attachments/assets/4c32d463-336c-4bbb-8222-205d146a5e1b)




## Data Dictionary
<img width="467" alt="projecttable1" src="https://github.com/user-attachments/assets/7d6622ea-b0ea-425d-8d60-d9a9a411b880">
<img width="465" alt="Screenshot 2024-12-03 at 11 20 28 PM" src="https://github.com/user-attachments/assets/a2119a59-bbeb-4637-a40e-4037c73e7eec">



<img width="479" alt="Screenshot 2024-12-03 at 11 15 23 PM" src="https://github.com/user-attachments/assets/6c2fdad8-781b-4175-9444-606e74a40dd9">

<img width="467" alt="Screenshot 2024-12-03 at 11 16 13 PM" src="https://github.com/user-attachments/assets/af2d3414-7723-49de-9d6e-93a44189be8c">

<img width="467" alt="Screenshot 2024-12-03 at 11 16 45 PM" src="https://github.com/user-attachments/assets/19403196-a627-405c-bfb9-67d66b5d11b2">

<img width="466" alt="projecttable6" src="https://github.com/user-attachments/assets/276ad745-3a2b-416e-a003-ef1807e161ef">
<img width="467" alt="Screenshot 2024-12-03 at 11 17 47 PM" src="https://github.com/user-attachments/assets/8fc55d17-862f-46ff-8edc-07ccf5889ef6">

<img width="467" alt="Screenshot 2024-12-03 at 11 18 42 PM" src="https://github.com/user-attachments/assets/a03f4f39-f4ff-47f3-9f10-b1ed47e8d45b">

<img width="468" alt="projecttable9" src="https://github.com/user-attachments/assets/4024218c-b5d9-4d90-8441-e1463ef4c079">
<img width="467" alt="Screenshot 2024-12-03 at 11 19 05 PM" src="https://github.com/user-attachments/assets/5edf12e0-77b7-4c4e-bd83-55f479c3be55">


<img width="471" alt="projecttable11" src="https://github.com/user-attachments/assets/710ce812-49df-4418-ae42-51db02b67585">
<img width="469" alt="projecttable12" src="https://github.com/user-attachments/assets/d461d658-f77a-4c5f-b627-d3d9d4a14070">

## Queries:
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
#### The DebtToRevenue view is designed to provide a clear financial analysis of companies by calculating their debt-to-revenue ratio. This view aggregates data from the Company, CompanyDebtDetails, and CompanyFinancials tables to compute three key metrics for each company: the total debt (TotalDebt), total revenue (TotalRevenue), and the debt-to-revenue ratio (DebtToRevenueRatio). The ratio is calculated by dividing the total debt by the total revenue, giving a measure of how much debt a company has relative to its earnings. The data is grouped by CompanyName, ensuring each row in the view corresponds to a specific company. Analysts can query the view to quickly assess the financial health and leverage of companies, with the results ordered by the debt-to-revenue ratio in descending order. This makes it easy to identify highly leveraged companies that may pose financial risks or require closer scrutiny in investment or operational decisions.

![image](https://github.com/user-attachments/assets/e9a73eff-c8d5-4dc1-88ff-a41084dd9bf8)


## Tableau Visualizations

### Visual 1
#### This visualization is important because it provides a clear comparison between the actual and projected revenues for various mergers and acquisitions. By identifying gaps or consistencies between the two metrics, stakeholders can assess the performance of these deals and evaluate the accuracy of revenue forecasts. This helps in understanding which deals have exceeded or fallen short of expectations, enabling better decision-making for future investments and strategic planning.

![Visual1](https://github.com/user-attachments/assets/9fc7c910-6535-44c1-bf3f-8c2486ddb450)

### Visual 2
#### This visualization highlights the Return on Investment (ROI) across various industries, providing a clear comparison of financial performance. By identifying which industries yield higher ROI, decision-makers can prioritize investments and allocate resources more effectively. For example, the chart shows that the Technology sector outperforms other industries in terms of ROI, making it a potential focus for future investments. This insight helps businesses and investors assess sector performance and strategize for maximum profitability.

![Visual 2](https://github.com/user-attachments/assets/3c322723-94d3-4a08-9fea-37574410fa67)

### Visual 3
#### This visualization showcases the total deal value by headquarters (HQ) location, offering insights into the geographical distribution of mergers and acquisitions. It helps identify cities where companies are engaging in high-value deals, such as Miami and Detroit, which stand out as leaders in deal activity. This information is crucial for understanding regional economic activity and investment patterns, enabling businesses to evaluate which locations are most active and competitive for high-value transactions. It also supports strategic decision-making for expanding operations or targeting partnerships in high-performing areas.

![image](https://github.com/user-attachments/assets/501b67e3-fdd7-4b95-914d-81b93294086c)




