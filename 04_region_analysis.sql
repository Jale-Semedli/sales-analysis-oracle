-- ============================================
-- Sorgu 3: Region uzre muqayise + RANK
-- Konsept: Window funksiyasi RANK() OVER
-- ============================================

SELECT
    region,
    COUNT(*)                                        AS satig_sayi,
    SUM(revenue)                                    AS umumi_gelir,
    ROUND(AVG(rating), 2)                           AS orta_reytinq,
    RANK() OVER (ORDER BY SUM(revenue) DESC)        AS siralama
FROM   sales_data
GROUP BY region
ORDER BY umumi_gelir DESC;
