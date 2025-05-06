-----------------------
-------Calender--------
-----------------------

CREATE EXTERNAL TABLE ext_cal
WITH
(
    LOCATION = 'ext_cal',
    DATA_SOURCE = nanisource2,
    FILE_FORMAT = csv_format
)
AS
SELECT *
FROM gold.cal;

-----------------------
-------Customer--------
-----------------------

CREATE EXTERNAL TABLE ext_customers
WITH
(
    LOCATION = 'ext_customers',
    DATA_SOURCE = nanisource2,
    FILE_FORMAT = csv_format
)
AS
SELECT *
FROM gold.customers;

-----------------------
--Product Catogories---
-----------------------

CREATE EXTERNAL TABLE ext_prod_cat
WITH
(
    LOCATION = 'ext_prod_cat',
    DATA_SOURCE = nanisource2,
    FILE_FORMAT = csv_format
)
AS
SELECT *
FROM gold.prod_cat;

-------------------------
--Product sub Catogories-
------------------------

CREATE EXTERNAL TABLE ext_prod_sub_cat
WITH
(
    LOCATION = 'ext_prod_sub_cat',
    DATA_SOURCE = nanisource2,
    FILE_FORMAT = csv_format
)
AS
SELECT *
FROM gold.prod_sub_cat;

-----------------------
-------Products--------
-----------------------

CREATE EXTERNAL TABLE ext_products
WITH
(
    LOCATION = 'ext_products',
    DATA_SOURCE = nanisource2,
    FILE_FORMAT = csv_format
)
AS
SELECT *
FROM gold.products;

-----------------------
-------Returns---------
-----------------------

CREATE EXTERNAL TABLE ext_returns
WITH
(
    LOCATION = 'ext_returns',
    DATA_SOURCE = nanisource2,
    FILE_FORMAT = csv_format
)
AS
SELECT *
FROM gold.returns;

-----------------------
-------Sales-----------
-----------------------

CREATE EXTERNAL TABLE ext_sales
WITH
(
    LOCATION = 'ext_sales',
    DATA_SOURCE = nanisource2,
    FILE_FORMAT = csv_format
)
AS
SELECT *
FROM gold.sales;

-----------------------
------Territories------
-----------------------

CREATE EXTERNAL TABLE ext_territories
WITH
(
    LOCATION = 'ext_territories',
    DATA_SOURCE = nanisource2,
    FILE_FORMAT = csv_format
)
AS
SELECT *
FROM gold.territories;



