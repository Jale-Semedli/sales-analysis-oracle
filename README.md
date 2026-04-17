# Sales Data Analysis — Oracle SQL

## Layihə haqqında

Bu layihədə real satış datasından (50 qeyd, 13 sütun) Oracle SQL istifadə edərək
müxtəlif biznes suallarına cavab verən analitik sorğular yazılmışdır.

## Dataset

| Xüsusiyyət     | Dəyər                                      |
|----------------|--------------------------------------------|
| Fayl           | SalesData.xlsx                             |
| Sətir sayı     | 50                                         |
| Sütun sayı     | 13                                         |
| Region         | North, South, East, West                   |
| Məhsullar      | Laptop, Monitor, Tablet, Printer, Desk, Chair |
| Müştəri növü   | Corporate, Education, Retail               |
| Dövr           | Yanvar — İyun                              |

## İstifadə olunan texnologiyalar

- Oracle SQL
- PL/SQL (gələcək versiyada)
- Power BI (gələcək versiyada)

## Sorğular

| Fayl | Mövzu | SQL konseptləri |
|------|-------|-----------------|
| `01_create_table.sql` | Cədvəl yaratma | CREATE TABLE, data types |
| `02_monthly_revenue.sql` | Aylıq gəlir | GROUP BY, SUM, AVG, CASE |
| `03_top_products.sql` | Top 5 məhsul | Subquery, ROWNUM |
| `04_region_analysis.sql` | Region müqayisəsi | RANK() OVER, Window funksiyası |
| `05_salesperson_performance.sql` | Satıcı performansı | HAVING, COUNT DISTINCT |
| `06_segment_discount.sql` | Müştəri seqmenti | CASE WHEN, GROUP BY çoxsütunlu |
| `07_running_total.sql` | Kumulyativ gəlir | LAG(), SUM OVER, NULLIF |

## Nümunə nəticə — Aylıq gəlir

| Ay  | Satış sayı | Ümumi gəlir |
|-----|-----------|-------------|
| Jan | 18        | 148,106     |
| Feb | 10        | 72,279      |
| Mar | 7         | 43,620      |
| Apr | 6         | 33,239      |
| May | 5         | 62,987      |
| Jun | 9         | 56,377      |

## Müəllif

Junior Data Analyst — Oracle SQL, PL/SQL, Power BI
