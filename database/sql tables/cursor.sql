--1
DECLARE @Customer_NationalID nvarchar(10), @Customer_FName nvarchar(100), @Customer_LName nvarchar(100)
DECLARE Customer_Cursor CURSOR FOR 
SELECT NationalID, FName, LName
FROM Customer

OPEN Customer_Cursor

FETCH NEXT FROM Customer_Cursor INTO @Customer_NationalID, @Customer_FName, @Customer_LName
WHILE @@FETCH_STATUS = 0
BEGIN 
  PRINT @Customer_NationalID
  PRINT @Customer_FName
  PRINT @Customer_LName

  FETCH NEXT FROM Customer_Cursor INTO @Customer_NationalID, @Customer_FName, @Customer_LName
END
CLOSE Customer_Cursor
DEALLOCATE Customer_Cursor

--2
DECLARE @Consultant_NationalID nvarchar(10), @Consultant_FName nvarchar(100), @Consultant_LName nvarchar(100)
DECLARE Consultant_Cursor CURSOR FOR 
SELECT NationalID, FName, LName
FROM Consultant

OPEN Consultant_Cursor

FETCH NEXT FROM Consultant_Cursor INTO @Consultant_NationalID, @Consultant_FName, @Consultant_LName
WHILE @@FETCH_STATUS = 0
BEGIN 
  
  PRINT @Consultant_NationalID
  PRINT @Consultant_FName
  PRINT @Consultant_LName

  FETCH NEXT FROM Consultant_Cursor INTO @Consultant_NationalID, @Consultant_FName, @Consultant_LName
END
CLOSE Consultant_Cursor
DEALLOCATE Consultant_Cursor

--3
DECLARE @CountryID int, @CountryName nvarchar(100), @Cpopulation int
DECLARE Country_Cursor CURSOR FOR 
SELECT CountryID, CountryName, Cpopulation
FROM Country

OPEN Country_Cursor

FETCH NEXT FROM Country_Cursor INTO @CountryID, @CountryName, @Cpopulation
WHILE @@FETCH_STATUS = 0
BEGIN 
  PRINT @CountryID
  PRINT @CountryName
  PRINT @Cpopulation

  FETCH NEXT FROM Country_Cursor INTO @CountryID, @CountryName, @Cpopulation
END
CLOSE Country_Cursor
DEALLOCATE Country_Cursor

--4
DECLARE @NationalID nvarchar(10), @FName nvarchar(100), @LName nvarchar(100)
DECLARE CustomerCursor CURSOR FOR 
SELECT NationalID, FName, LName FROM Customer

OPEN CustomerCursor

FETCH NEXT FROM CustomerCursor 
INTO @NationalID, @FName, @LName

WHILE @@FETCH_STATUS = 0
BEGIN 
  DECLARE @FullName nvarchar(200)
  SET @FullName = @FName + ' ' + @LName
  PRINT @FullName

  FETCH NEXT FROM CustomerCursor 
  INTO @NationalID, @FName, @LName
END 
CLOSE CustomerCursor
DEALLOCATE CustomerCursor

--5
DECLARE @ID int, @Name nvarchar(100)
DECLARE CountryCursor CURSOR FOR 
SELECT CountryID, CountryName FROM Country

OPEN CountryCursor

FETCH NEXT FROM CountryCursor 
INTO @ID, @Name

WHILE @@FETCH_STATUS = 0
BEGIN 
  DECLARE @Info nvarchar(115) 
  SET @Info = 'Country with ID ' + CAST(@ID AS nvarchar(10)) + ' is called ' + @Name
  PRINT @Info

  FETCH NEXT FROM CountryCursor 
  INTO @ID, @Name
END 
CLOSE CountryCursor
DEALLOCATE CountryCursor

--6
DECLARE @VisaID INT, @RequestStatus NVARCHAR(50)
DECLARE VisaCursor CURSOR FOR 
SELECT VisaID, RequestStatus FROM Visa

OPEN VisaCursor

FETCH NEXT FROM VisaCursor 
INTO @VisaID, @RequestStatus

WHILE @@FETCH_STATUS = 0
BEGIN 
  DECLARE @message NVARCHAR(115) 
  SET @message = 'Visa with ID ' + CAST(@VisaID AS NVARCHAR(10)) + ' has a request status of ' + @RequestStatus
  PRINT @message

  FETCH NEXT FROM VisaCursor 
  INTO @VisaID, @RequestStatus
END 
CLOSE VisaCursor
DEALLOCATE VisaCursor