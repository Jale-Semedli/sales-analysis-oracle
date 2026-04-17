-- ============================================
-- Sorgu 1: Ay uzre umumi gelir
-- Konsept: GROUP BY, SUM, ORDER BY
-- ============================================

SELECT
    month,
    COUNT(*)                        AS satig_sayi,
    SUM(units_sold)                 AS toplam_eded,
    SUM(revenue)                    AS umumi_gelir,
    ROUND(AVG(revenue), 2)          AS orta_gelir
FROM   sales_data
GROUP BY month
ORDER BY
    CASE month
        WHEN 'Jan' THEN 1 WHEN 'Feb' THEN 2 WHEN 'Mar' THEN 3
        WHEN 'Apr' THEN 4 WHEN 'May' THEN 5 WHEN 'Jun' THEN 6
    END;
