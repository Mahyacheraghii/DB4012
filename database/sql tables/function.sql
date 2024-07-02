--1
CREATE FUNCTION dbo.avgPayment()
RETURNS DECIMAL(10, 2) 
AS
BEGIN
    DECLARE @avgPay DECIMAL(10, 2);
    SELECT @avgPay = AVG(CAST(Amount AS DECIMAL(10, 2)))
    FROM [dbo].[Cost];
    RETURN @avgPay;
END;
GO

SELECT dbo.avgPayment() AS AvgPayment;

--2
CREATE FUNCTION dbo.GetConsultantDegree(@CustomerNationalID NVARCHAR(10))
RETURNS NVARCHAR(50)
AS
BEGIN
    DECLARE @RelevantDegree NVARCHAR(50);

    SELECT @RelevantDegree = c.RelevantDegree
    FROM [dbo].[Consultant] as c
    INNER JOIN [dbo].[Counseling] as cs ON cs.ConsultantID = c.NationalID
    WHERE cs.CustomerID = @CustomerNationalID;

    RETURN @RelevantDegree;
END;
GO

SELECT dbo.GetConsultantDegree('N000000001') AS ConsultantDegree;

--3
USE mohajeratDB;
GO

CREATE FUNCTION dbo.GetCustomerChosenCountry (@CustomerNationalID NVARCHAR(10))
RETURNS NVARCHAR(100)
AS
BEGIN
    DECLARE @CountryName NVARCHAR(100);

    SELECT @CountryName = cn.CountryName
    FROM [dbo].[country] cn
    INNER JOIN [dbo].[Choose] ch ON cn.CountryID = ch.CountryID
    WHERE ch.CustomerID = @CustomerNationalID;

    RETURN @CountryName;
END;
GO

SELECT dbo.GetCustomerChosenCountry('N000000001') AS ChosenCountryName;