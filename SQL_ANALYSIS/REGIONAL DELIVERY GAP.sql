---REGIONAL DELIVERY GAP(Order by Region)
SELECT
    Market AS region,
    ROUND(AVG("Delivery Gap"), 2) AS avg_delivery_gap_days,
    COUNT(*) AS total_orders,
    SUM(Late_delivery_risk) AS late_orders,
    ROUND(100.0 * SUM(Late_delivery_risk) / COUNT(*), 1) AS late_rate_pct
FROM DataCoSupplyChain_SQL
GROUP BY Market
ORDER BY late_rate_pct DESC
