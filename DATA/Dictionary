# DataCo Dataset — Data Dictionary

This document describes every column in the DataCo Smart Supply 
Chain dataset used for this analysis. Columns are grouped by 
business area for easier reference.

## Order Information
| Column Name | Description | Type |
|---|---|---|
| Order Id | Unique identifier for each order | Number |
| Order Item Id | Unique identifier for each item within an order | Number |
| Order Status | Current status of the order | Text |
| order date (DateOrders) | Date the order was placed | Date |
| shipping date (DateOrders) | Date the order was shipped | Date |
| Order Item Quantity | Number of units in the order | Number |
| Order Item Discount | Discount amount applied to the order | Number |
| Order Item Discount Rate | Discount as a percentage | Number |

## Customer Information
| Column Name | Description | Type |
|---|---|---|
| Customer Id | Unique identifier for each customer | Number |
| Customer Segment | Type of customer (Consumer, Corporate, Home Office) | Text |
| Customer City | City where customer is located | Text |
| Customer State | State or region of customer | Text |
| Customer Country | Country where customer is located | Text |
| Customer Zipcode | Postal code of customer location | Number |

## Geographic Information
| Column Name | Description | Type |
|---|---|---|
| Market | Broad geographic region (Africa, Europe, LATAM, Pacific Asia, USCA) | Text |
| Order Region | Smaller geographic grouping within Market | Text |
| Order City | City where order originated | Text |
| Order Country | Country where order originated | Text |
| Order State | State where order originated | Text |
| Latitude | Latitude coordinate of customer location | Number |
| Longitude | Longitude coordinate of customer location | Number |

## Product Information
| Column Name | Description | Type |
|---|---|---|
| Department Id | Unique identifier for the department | Number |
| Department Name | Business unit the product belongs to | Text |
| Category Id | Unique identifier for the product category | Number |
| Category Name | Specific product category | Text |
| Product Card Id | Unique product identifier | Number |
| Product Name | Name of the product | Text |
| Product Price | Listed price of the product | Number |
| Product Status | Stock status of the product | Number |

## Financial Information
| Column Name | Description | Type |
|---|---|---|
| Sales | Total sales value of the order | Number |
| Sales per customer | Total sales attributed to that customer | Number |
| Order Item Product Price | Price per unit at time of order | Number |
| Order Item Total | Total value of the order item | Number |
| Order Item Profit Ratio | Profit margin as a decimal between 0 and 1 | Number |
| Order Profit Per Order | Profit earned per order | Number |
| Benefit per order | Net profit per order after all costs | Number |

## Shipping and Delivery
| Column Name | Description | Type |
|---|---|---|
| Shipping Mode | Type of shipping (First Class, Second Class, Same Day, Standard Class) | Text |
| Days for shipment (scheduled) | Promised delivery time in days | Number |
| Days for shipping (real) | Actual delivery time in days | Number |
| Late_delivery_risk | 1 if order arrived late, 0 if on time | Binary |
| Delivery Status | Final delivery outcome | Text |

## Payment Information
| Column Name | Description | Type |
|---|---|---|
| Payment Type | Method of payment used | Text |

## Calculated Columns (added during analysis)
| Column Name | Description | Type |
|---|---|---|
| Delivery Gap | Difference between actual and scheduled delivery days (real minus scheduled) | Number |
| Item_Revenue | Order Item Quantity multiplied by Order Item Product Price | Number |

---

**Dataset Source:** [DataCo Smart Supply Chain for Big Data Analysis on Kaggle](https://www.kaggle.com/datasets/shashwatwork/dataco-smart-supply-chain-for-big-data-analysis)
