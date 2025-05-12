-- CREATE TABLE dbo.Authors(
--     id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
--     first_name NVARCHAR(100) NOT NULL,
--     middle_name NVARCHAR(100) NULL,
--     last_name NVARCHAR(100) NOT NULL
-- )

INSERT INTO dbo.Authors(first_name, middle_name, last_name)
VALUES ('Isaac','bob','tan'),
('Arthur','Riddick','dick')

SELECT *
FROM dbo.Authors