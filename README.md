
# Logistics and Order Performance Analysis — DataCo Dataset

## Project Overview
Analysis of 180,000+ supply chain orders across five global markets 
to identify operational inefficiencies and provide actionable 
business recommendations.

**Tools Used:** SQL (SQLite/DBeaver), Excel, Google Looker Studio  
**Dataset:** [DataCo Smart Supply Chain — Kaggle](https://www.kaggle.com/datasets/shashwatwork/dataco-smart-supply-chain-for-big-data-analysis)

## Business Questions
1. Does shipping mode impact late delivery rates?
2.  Does delivery performance vary by region?
3. Which product categories and departments are most profitable?
4. Which departments have the highest order risk rates?

## Key Findings
- First Class shipping has a **95.3% late delivery rate** — the worst 
  of all four shipping modes despite being a premium service
- Fan Shop generates **12x more absolute profit** than departments 
  with higher profit ratios
- Order risk rate is consistently **8-10% across all departments** — 
  indicating a systemic issue rather than departmental
- All five regions record a **54-55% late delivery rate** — confirming 
  a systemic operational problem

## Dashboard
[View Live Dashboard](https://datastudio.google.com/s/hWrix3mT5ys)

## Portfolio Write-up
[View Full Analysis](https://www.notion.so/Hauwa-Ibrahim-Logistics-and-Order-Performance-Analysis-of-the-Dataco-Dataset-3635587c50c880deaccfc75f5f57c0e0?pvs=28)

## Files in this Repository
- `01_delivery_performance.sql` — Shipping mode vs late delivery rate
- `02_sales_profitability.sql` — Department and category profit analysis
- `03_order_completion.sql` — Order status and risk rate by department
- `04_regional_delivery_gap.sql` — Delivery gap analysis by market

## Dashboard Preview
![Delivery Performance](screenshots/delivery_performance.png)
    
