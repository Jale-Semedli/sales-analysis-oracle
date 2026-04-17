-- ============================================
-- Sorğu 6: Kumulyativ (artan) gəlir - LAG
-- İstifadə olundu: LAG() window funksiyasi, subquery
-- ============================================

SELECT
    ay,
    aylik_gelir,
    SUM(aylik_gelir) OVER (
        ORDER BY siralama
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    )                                               AS kumulyativ_gelir,
    LAG(aylik_gelir) OVER (ORDER BY siralama)       AS evvelki_ay_gelir,
    ROUND(
        (aylik_gelir - LAG(aylik_gelir) OVER (ORDER BY siralama))
        / NULLIF(LAG(aylik_gelir) OVER (ORDER BY siralama), 0) * 100
    , 1)                                            AS boyume_faizi
FROM (
    SELECT
        month                                       AS ay,
        SUM(revenue)                                AS aylik_gelir,
        CASE month
            WHEN 'Jan' THEN 1 WHEN 'Feb' THEN 2 WHEN 'Mar' THEN 3
            WHEN 'Apr' THEN 4 WHEN 'May' THEN 5 WHEN 'Jun' THEN 6
        END                                         AS siralama
    FROM   sales_data
    GROUP BY month
)
ORDER BY siralama;
