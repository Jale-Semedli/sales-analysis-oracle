-- ============================================
-- Sorgu 2: En cox satan Top 5 mehsul
-- Konsept: Subquery, ROWNUM (Oracle-a xas)
-- ============================================

SELECT *
FROM (
    SELECT
        product,
        category,
        COUNT(*)                        AS satig_sayi,
        SUM(units_sold)                 AS toplam_eded,
        SUM(revenue)                    AS toplam_gelir,
        ROUND(AVG(rating), 2)           AS orta_reytinq
    FROM   sales_data
    GROUP BY product, category
    ORDER BY toplam_gelir DESC
)
WHERE ROWNUM <= 5;
