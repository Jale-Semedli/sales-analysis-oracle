-- ============================================
-- Sorğu 3: Region üzrə müqayisə + RANK
-- İstifadə olundu: Window funksiyası RANK() OVER
-- ============================================

SELECT
    region,
    COUNT(*)                                        AS satis_sayi,
    SUM(revenue)                                    AS umumi_gelir,
    ROUND(AVG(rating), 2)                           AS orta_reytinq,
    RANK() OVER (ORDER BY SUM(revenue) DESC)        AS siralama
FROM   sales_data
GROUP BY region
ORDER BY umumi_gelir DESC;
