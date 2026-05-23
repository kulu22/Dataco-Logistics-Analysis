---ORDER COMPLETION BY DEPARTMENT
WITH order_summary AS(
    SELECT
        "Department Name" AS department,
        COUNT(*) AS total_orders,
        SUM(CASE WHEN "Order Status" IN ('COMPLETE', 'PROCESSING', 'PAYMENT_REVIEW', 'PENDING', 'PENDING_PAYMENT') THEN 1 ELSE 0 END) AS pipeline,
        SUM(CASE WHEN "Order Status" IN ('CANCELED', 'ON_HOLD', 'SUSPECTED_FRAUD') THEN 1 ELSE 0 END) AS monitoring,
        SUM(CASE WHEN "Order Status" = 'CLOSED' THEN 1 ELSE 0 END) AS ambiguous
    FROM DataCoSupplyChain_SQL
    GROUP BY department
)
SELECT
    department,
    total_orders,
    pipeline,
    monitoring,
    ambiguous,
    ROUND(100.0 * pipeline / total_orders, 2) AS pipeline_rate_pct,
    ROUND(100.0 * monitoring / total_orders, 2) AS monitoring_rate_pct
FROM order_summary
ORDER BY monitoring_rate_pct DESC


--Overall monitoring rate(headline data)
WITH order_summary AS (
    SELECT
        COUNT(*) AS total_orders,
        SUM(CASE WHEN "Order Status" IN ('CANCELED', 'ON_HOLD', 'SUSPECTED_FRAUD') THEN 1 ELSE 0 END) AS monitoring
    FROM DataCoSupplyChain_SQL
)
SELECT
    ROUND(100.0 * monitoring / total_orders, 2) AS overall_monitoring_rate_pct
FROM order_summary