-- DATA CLEANING: Date column conversion: The order date column is stored as text in M/D/YYYY format, which SQLite sorts alphabetically instead of by real date.
--This creates a clean YYYY-MM-DD column for reliable date queries.

ALTER TABLE DataCoSupplyChain_SQL ADD COLUMN order_date_clean TEXT;

UPDATE DataCoSupplyChain_SQL
SET order_date_clean = 
    printf('%04d-%02d-%02d',
        CAST(substr("order date (DateOrders)", 
            instr("order date (DateOrders)", '/') + 
            instr(substr("order date (DateOrders)", instr("order date (DateOrders)", '/') + 1), '/') + 1, 4) AS INTEGER),
        CAST(substr("order date (DateOrders)", 1, instr("order date (DateOrders)", '/') - 1) AS INTEGER),
        CAST(substr(substr("order date (DateOrders)", instr("order date (DateOrders)", '/') + 1), 1, 
            instr(substr("order date (DateOrders)", instr("order date (DateOrders)", '/') + 1), '/') - 1) AS INTEGER)
    );

SELECT "order date (DateOrders)", order_date_clean
FROM DataCoSupplyChain_SQL
LIMIT 10;
