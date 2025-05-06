-----------------------
-------Calender--------
-----------------------

CREATE VIEW gold.cal
AS
SELECT * 
FROM OPENROWSET
(
    BULK 'Calendar/*.csv',  -- add remaing path of that file
    DATA_SOURCE = 'nanisource1',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE
) AS result;

-----------------------
-------Customer--------
-----------------------

CREATE VIEW gold.customers
AS
SELECT * 
FROM OPENROWSET
(
    BULK 'Customers/*.csv',  -- add remaing path of that file
    DATA_SOURCE = 'nanisource1',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE
) AS result;

-----------------------
--Product Catogories---
-----------------------

CREATE VIEW gold.prod_cat
AS
SELECT * 
FROM OPENROWSET
(
    BULK 'Product_Categories/*.csv',  -- add remaing path of that file
    DATA_SOURCE = 'nanisource1',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE
) AS result;

-------------------------
--Product sub Catogories-
------------------------

CREATE VIEW gold.prod_sub_cat
AS
SELECT * 
FROM OPENROWSET
(
    BULK 'Product_Sub_Categories/*.csv',  -- add remaing path of that file
    DATA_SOURCE = 'nanisource1',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE
) AS result;

-----------------------
-------Products--------
-----------------------

CREATE VIEW gold.products
AS
SELECT * 
FROM OPENROWSET
(
    BULK 'Products/*.csv',  -- add remaing path of that file
    DATA_SOURCE = 'nanisource1',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE
) AS result;

-----------------------
-------Returns---------
-----------------------

CREATE VIEW gold.returns
AS
SELECT * 
FROM OPENROWSET
(
    BULK 'Returns/*.csv',  -- add remaing path of that file
    DATA_SOURCE = 'nanisource1',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE
) AS result;

-----------------------
-------Sales-----------
-----------------------

CREATE VIEW gold.sales
AS
SELECT * 
FROM OPENROWSET
(
    BULK 'Sales/*.csv',  -- add remaing path of that file
    DATA_SOURCE = 'nanisource1',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE
) AS result;

-----------------------
------Territories------
-----------------------

CREATE VIEW gold.territories
AS
SELECT * 
FROM OPENROWSET
(
    BULK 'Territories/*.csv',  -- add remaing path of that file
    DATA_SOURCE = 'nanisource1',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = TRUE
) AS result;
