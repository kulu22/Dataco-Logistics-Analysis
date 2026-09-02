
-- Total profit at risk across the business
SELECT
    ROUND(SUM(CASE WHEN Late_delivery_risk = 1 
        THEN "Benefit per order" ELSE 0 END), 2) AS total_profit_at_risk,
    ROUND(100.0 * SUM(CASE WHEN Late_delivery_risk = 1 
        THEN "Benefit per order" ELSE 0 END) 
        / SUM("Benefit per order"), 1) AS pct_profit_at_risk
FROM DataCoSupplyChain_SQL;


-- DRIVERS: which categories carry the most profit exposure
SELECT
    "Category Name" AS category,
    ROUND(SUM("Benefit per order"), 2) AS total_profit,
    ROUND(SUM(CASE WHEN Late_delivery_risk = 1 
        THEN "Benefit per order" ELSE 0 END), 2) AS profit_at_risk,
    ROUND(100.0 * SUM(CASE WHEN Late_delivery_risk = 1 
        THEN "Benefit per order" ELSE 0 END) 
        / SUM("Benefit per order"), 1) AS pct_at_risk
FROM DataCoSupplyChain_SQL
GROUP BY category
ORDER BY profit_at_risk DESC;


-- EXCEPTION: severity vs scale by shipping mode
SELECT
    "Shipping Mode",
    COUNT(*) AS total_orders,
    ROUND(100.0 * SUM(Late_delivery_risk) / COUNT(*), 1) AS late_rate_pct,
    ROUND(SUM(CASE WHEN Late_delivery_risk = 1 
        THEN "Benefit per order" ELSE 0 END), 2) AS profit_at_risk
FROM DataCoSupplyChain_SQL
GROUP BY "Shipping Mode"
ORDER BY profit_at_risk DESC;


-- TREND: profit vs profit at risk by month (uses clean date)
SELECT
    substr(order_date_clean, 1, 7) AS year_month,
    ROUND(SUM("Benefit per order"), 2) AS total_profit,
    ROUND(SUM(CASE WHEN Late_delivery_risk = 1 
        THEN "Benefit per order" ELSE 0 END), 2) AS profit_at_risk
FROM DataCoSupplyChain_SQL
WHERE order_date_clean BETWEEN '2015-01-01' AND '2017-09-30'
GROUP BY year_month
ORDER BY year_month;
