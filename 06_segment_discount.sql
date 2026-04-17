-- ============================================
-- Sorğu 5: Müştəri seqmenti + endirim analizi
-- İstifadə olundu: CASE WHEN, GROUP BY, NVL
-- ============================================

SELECT
    customer_segment,
    region,
    COUNT(*)                                            AS satis_sayi,
    SUM(revenue)                                        AS umumi_gelir,
    SUM(CASE WHEN discount = '0%' THEN 1 ELSE 0 END)   AS endirimsiz_satig,
    SUM(CASE WHEN discount != '0%' THEN 1 ELSE 0 END)  AS endirimli_satig,
    ROUND(AVG(rating), 2)                               AS orta_reytinq
FROM   sales_data
GROUP BY customer_segment, region
ORDER BY customer_segment, umumi_gelir DESC;
