# Order Completion by Department

## Business Question
Do specific departments have higher rates of problematic orders?

## Analysis Approach
I categorised order statuses into three groups using SQL, then 
calculated the rate per department.

- **Pipeline** — Complete, Processing, Pending, Payment Review, Pending Payment
- **Monitoring** — Cancelled, On Hold, Suspected Fraud
- **Ambiguous** — Closed (treated separately due to unclear final outcome)

## Finding
Pipeline orders accounted for at least 85% of total orders across 
all departments. The monitoring rate ranged narrowly between 8% 
and 10% — with no department standing out significantly. This 
suggests a systemic issue rather than a departmental one, most 
likely payment friction or platform reliability.

| Department | Order Risk Rate |
|---|---|
| Apparel | 9.83% |
| Golf | 9.82% |
| Fan Shop | 9.70% |
| Fitness | 9.64% |
| Footwear | 9.61% |
| Discs Shop | 9.47% |
| Outdoors | 9.41% |
| Pet Shop | 9.37% |
| Technology | 9.20% |
| Book Shop | 8.63% |
| Health and Beauty | 8.00% |

## Recommendation
A review of the payment and checkout experience is needed. 
Resolving this at the system level would improve completion 
rates across all departments simultaneously rather than 
addressing each in isolation.

## Dashboard
[View on Looker Studio](https://datastudio.google.com/reporting/0ede86f1-2d58-418d-99ad-d436285d6328)

