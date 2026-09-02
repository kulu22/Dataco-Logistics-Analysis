
-- Late delivery rate and average delivery gap by market
SELECT
    Market AS region,
    COUNT(*) AS total_orders,
    SUM(Late_delivery_risk) AS late_orders,
    ROUND(100.0 * SUM(Late_delivery_risk) / COUNT(*), 1) AS late_rate_pct,
    ROUND(AVG("Delivery gap"), 2) AS avg_delivery_gap_days
FROM DataCoSupplyChain_SQL
GROUP BY Market
ORDER BY late_rate_pct DESC;
