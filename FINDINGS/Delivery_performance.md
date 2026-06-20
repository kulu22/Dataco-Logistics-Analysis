# Delivery Performance by Shipping Mode

## Business Question
Does shipping method impact late delivery outcomes?

## Analysis Approach
I used SQL to test whether shipping mode drives late deliveries 
across all orders in the dataset.

## Initial Finding (Misleading)
My initial analysis ranked shipping modes by total late deliveries, 
which showed Standard Class as the highest.

## True Finding
Upon further analysis comparing late deliveries against total 
orders per shipping mode, First Class shipping had over 95% of 
its orders arriving late — the worst rate among the four shipping 
modes.

| Shipping Mode | Total Orders | Late Orders | Late Rate |
|---|---|---|---|
| First Class | 27,814 | 26,513 | 95.3% |
| Second Class | 35,216 | 26,987 | 76.6% |
| Same Day | 9,737 | 4,454 | 45.7% |
| Standard Class | 107,752 | 41,023 | 38.1% |

## Business Implication
This is significant because First Class customers are likely the 
highest spenders with the highest expectations. A 95% late 
delivery rate means the business is consistently failing its most 
valuable customers. The consequences include poor customer 
experience, revenue loss from churn, and ceding those customers 
to competitors.

## Recommendation
Urgent operational review of First Class and Second Class 
fulfilment processes to identify why premium shipments are 
underperforming. Establish realistic service level agreements 
the business can consistently meet.

## Dashboard
[View on Looker Studio](https://datastudio.google.com/reporting/0ede86f1-2d58-418d-99ad-d436285d6328)
