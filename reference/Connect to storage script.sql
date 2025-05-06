-----------------------
------Master Key-------
-----------------------
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Enter Key'

-----------------------
------Credentials------
-----------------------
CREATE DATABASE SCOPED CREDENTIAL nani_cred
WITH
IDENTITY = 'Managed Identity'

-----------------------
--External Data Source- Silver
-----------------------
CREATE EXTERNAL DATA SOURCE nanisource1
WITH
(
    LOCATION = 'https://nanigen2025.dfs.core.windows.net/silver/',
    CREDENTIAL = nani_cred
)

-----------------------
--External Data Source- Gold
-----------------------
CREATE EXTERNAL DATA SOURCE nanisource2
WITH
(
    LOCATION = 'https://nanigen2025.dfs.core.windows.net/gold/',
    CREDENTIAL = nani_cred
)
-----------------------
--External File Format-
-----------------------
CREATE EXTERNAL FILE FORMAT csv_format
WITH (
    FORMAT_TYPE = DELIMITEDTEXT,
    FORMAT_OPTIONS (
        FIELD_TERMINATOR = ',',
        STRING_DELIMITER = '"',
        FIRST_ROW = 1
    )
);

 





