-- ============================================
-- SalesData layihesi - Cedvel yaratma skripti
-- Texnologiya: Oracle SQL
-- ============================================

CREATE TABLE sales_data (
    sale_id          NUMBER          PRIMARY KEY,
    region           VARCHAR2(20),
    salesperson      VARCHAR2(50),
    product          VARCHAR2(50),
    category         VARCHAR2(30),
    month            VARCHAR2(10),
    units_sold       NUMBER,
    unit_price       NUMBER(10,2),
    discount         VARCHAR2(5),
    revenue          NUMBER(10,2),
    customer_segment VARCHAR2(30),
    rating           NUMBER(3,1),
    remarks          VARCHAR2(100)
);
