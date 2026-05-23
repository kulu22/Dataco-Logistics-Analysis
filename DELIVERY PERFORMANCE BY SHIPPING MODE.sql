---DELIVERY PERFORMANCE BY SHIPPING MODE
WITH shipping_summary AS (
    SELECT
        "Shipping Mode" AS shipping,
        COUNT(*) AS total_orders,
        SUM(Late_delivery_risk) AS late_orders
    FROM DataCoSupplyChain_SQL
    GROUP BY "Shipping Mode"
)
SELECT
    shipping,
    total_orders,
    late_orders,
    ROUND(CAST(late_orders AS FLOAT) / total_orders * 100, 1) AS late_delivery_rate_pct
FROM shipping_summary
ORDER BY late_delivery_rate_pct DESC