-- ============================================
-- Sorgu 4: Satici performansi
-- Konsept: GROUP BY, HAVING, COUNT DISTINCT
-- ============================================

SELECT
    salesperson,
    COUNT(*)                                AS satig_sayi,
    COUNT(DISTINCT product)                 AS fərqli_mehsul,
    SUM(revenue)                            AS umumi_gelir,
    ROUND(AVG(rating), 2)                   AS orta_reytinq,
    ROUND(AVG(units_sold), 1)               AS orta_eded
FROM   sales_data
GROUP BY salesperson
HAVING SUM(revenue) > 20000
ORDER BY umumi_gelir DESC;
