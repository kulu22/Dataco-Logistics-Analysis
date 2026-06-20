# Regional Delivery Gap Analysis

## Business Question
Does delivery performance vary by region?

## Data Quality Note
The order date column contained inconsistent datetime formats 
across rows, making reliable year-based grouping in SQLite 
challenging. This is a data quality issue that would be flagged 
for the data engineering team in a real business context. Regional 
analysis was therefore conducted at the aggregate level rather 
than trended over time.

## Analysis Approach
I analysed total orders, late orders, late delivery rate, and 
average delivery gap across all five markets.

## Finding
The results were strikingly consistent — every region recorded a 
late delivery rate between 54% and 55% with an average delivery 
gap of 0.57 days. No single region stood out as uniquely 
problematic.

| Region | Avg Delivery Gap (days) | Late Delivery Rate |
|---|---|---|
| Europe | 0.57 | 55.2% |
| Pacific Asia | 0.57 | 55.0% |
| USCA | 0.57 | 54.8% |
| Africa | 0.56 | 54.6% |
| LATAM | 0.56 | 54.4% |

## Connection to Earlier Findings
This mirrors the earlier Order Completion analysis, where 
monitoring rates were equally narrow across all departments at 
8-10%. Two separate analyses pointing to the same conclusion 
strengthens the case for a systemic operational issue rather than 
a geographic or departmental one.

## Recommendation
A root cause investigation focused on fulfilment operations, 
platform reliability, and order communication processes is needed. 
Left unaddressed, consistently unmet delivery expectations will 
accelerate customer churn and erode revenue across all markets 
simultaneously.

## Dashboard
[View on Looker Studio](https://datastudio.google.com/u/0/reporting/0ede86f1-2d58-418d-99ad-d436285d6328/page/p_jj991vyn3d/edit)


