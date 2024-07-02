USE mohajeratDB;
GO

-- TRIGGER Customer
CREATE TRIGGER trg_AFTER_INSERT_Customer
ON [dbo].[Customer]
AFTER INSERT 
AS 
BEGIN
    PRINT 'A new record inserted into Customer table.';
END;
GO

-- TRIGGER Consultant
CREATE TRIGGER trg_AFTER_INSERT_Consultant
ON [dbo].[Consultant]
AFTER INSERT 
AS 
BEGIN
    PRINT 'A new record inserted into Consultant table.';
END;
GO

-- TRIGGER Customer
CREATE TRIGGER trg_AFTER_UPDATE_Customer
ON [dbo].[Customer]
AFTER UPDATE 
AS 
BEGIN
    PRINT 'A record in the Customer table is updated.';
END;
GO

-- TRIGGER Consultant 
CREATE TRIGGER trg_AFTER_UPDATE_Consultant
ON [dbo].[Consultant]
AFTER UPDATE 
AS 
BEGIN
    PRINT 'A record in the Consultant table is updated.';
END;
GO

--ASSERTION
ALTER TABLE [mohajeratDB].[dbo].[Customer]
ADD CONSTRAINT CK_Customer_PhoneNumber
CHECK (LEN(PhoneNumber) = 10 AND PhoneNumber NOT LIKE '%[^0-9]%');

ALTER TABLE [mohajeratDB].[dbo].[Consultant]
ADD CONSTRAINT CK_Customer_PhoneNumber
CHECK (LEN(PhoneNumber) = 10 AND PhoneNumber NOT LIKE '%[^0-9]%');