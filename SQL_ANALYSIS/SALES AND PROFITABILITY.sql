---SALES AND PROFITABILITY (Department level)
SELECT
    "Department Name" AS department,
    ROUND(SUM("Benefit per order"), 2) AS total_benefit,
    ROUND(AVG("Order Item Profit Ratio") * 100, 1) AS avg_profit_ratio_pct,
    COUNT(*) AS total_orders
FROM DataCoSupplyChain_SQL
GROUP BY department
ORDER BY total_benefit DESC

--Category level
SELECT
    "Category Name" AS category,
    ROUND(SUM("Benefit per order"), 2) AS total_benefit,
    ROUND(AVG("Order Item Profit Ratio") * 100, 1) AS avg_profit_ratio_pct,
    COUNT(*) AS total_orders
FROM DataCoSupplyChain_SQL
GROUP BY category
ORDER BY total_benefit DESC
