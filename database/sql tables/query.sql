-- 1
SELECT FName, lname,NationalID
FROM [mohajeratDB].[dbo].[Customer]
WHERE NationalID in (select CustomerID FROM [mohajeratDB].[dbo].[Visa] WHERE ImmigrationType='marriage')

SELECT FName, lname,NationalID
FROM [mohajeratDB].[dbo].[Customer]
WHERE NationalID in (select CustomerID FROM [mohajeratDB].[dbo].[Visa] WHERE ImmigrationType='investment')

SELECT FName, lname,NationalID
FROM [mohajeratDB].[dbo].[Customer]
WHERE NationalID in (select CustomerID FROM [mohajeratDB].[dbo].[Visa] WHERE ImmigrationType='work')

-- 2
SELECT fname, LName,NationalID
FROM [mohajeratDB].[dbo].[Customer]
WHERE NationalID in (SELECT customerID FROM [mohajeratDB].[dbo].[Counseling] WHERE ConsultantID='C000000003')

--3
SELECT fname, LName,NationalID
FROM [mohajeratDB].[dbo].[Customer]
WHERE NationalID in (SELECT customerID FROM [mohajeratDB].[dbo].[Choose] WHERE CountryID='10')

--4
SELECT fname, LName,NationalID
FROM [mohajeratDB].[dbo].[Customer]
WHERE NationalID in ( SELECT CustomerID FROM [mohajeratDB].[dbo].[cost] WHERE PaymentStatus='paid')

--5
SELECT CustomerID
FROM [mohajeratDB].[dbo].[Visa]
WHERE ImmigrationType='work'

--6
SELECT CustomerID
FROM [mohajeratDB].[dbo].[Visa]
WHERE RequestStatus='EXPIRED'

--7
SELECT VisaID
FROM [mohajeratDB].[dbo].[Visa]
WHERE CustomerID in (SELECT nationalID FROM [mohajeratDB].[dbo].[Customer] WHERE nationalID in (SELECT CustomerID FROM [mohajeratDB].[dbo].[Choose] WHERE countryID=10))

--8
SELECT fname, LName,NationalID
FROM [mohajeratDB].[dbo].[Customer]
WHERE NationalID='N000000001'

--9
SELECT fname, LName,NationalID
FROM [mohajeratDB].[dbo].[Consultant]
WHERE NationalID='C000000001'

--10
SELECT *
FROM [mohajeratDB].[dbo].[Document]
WHERE DocID='2'

-- 11
SELECT FName, lname, NationalID, BirthDate
FROM [mohajeratDB].[dbo].[Consultant]

--12
SELECT *
FROM [mohajeratDB].[dbo].[Document]
WHERE CustomerID='N000000001'

--13
SELECT FName, lname, NationalID, BirthDate
FROM [mohajeratDB].[dbo].[Customer]

--14
SELECT
  Customer.NationalID,
  Customer.FName,
  Customer.LName,
  Cost.PaymentDate,
  Cost.PaymentStatus,
  Cost.Amount
FROM
  [mohajeratDB].[dbo].[Customer]
LEFT JOIN
  [mohajeratDB].[dbo].[Cost]
ON
  Customer.NationalID = Cost.CustomerID;

--15
SELECT
  Customer.NationalID,
  Customer.FName,
  Customer.LName,
  Counseling.ConsultantID
FROM
  [mohajeratDB].[dbo].[Customer]
INNER JOIN
  [mohajeratDB].[dbo].[Counseling]
ON
  Customer.NationalID = Counseling.CustomerID;

--16
SELECT
  Consultant.FName + ' ' + Consultant.LName AS ConsultantName,
  Customer.FName + ' ' + Customer.LName AS CustomerName
FROM
  [mohajeratDB].[dbo].[Consultant]
INNER JOIN
  [mohajeratDB].[dbo].[Counseling]
ON
  Consultant.NationalID = Counseling.ConsultantID
INNER JOIN
  [mohajeratDB].[dbo].[Customer]
ON
  Counseling.CustomerID = Customer.NationalID;

--17
SELECT
  Customer.FName + ' ' + Customer.LName AS CustomerName,
  country.CountryName
FROM
  [mohajeratDB].[dbo].[Customer]
INNER JOIN
  [mohajeratDB].[dbo].[Choose]
ON
  Customer.NationalID = Choose.CustomerID
INNER JOIN
  [mohajeratDB].[dbo].[country]
ON
  Choose.CountryID = country.CountryID;

--18
SELECT
  Customer.FName + ' ' + Customer.LName AS CustomerName,
  Document.DocID,
  Document.PassportNumber
FROM
  [mohajeratDB].[dbo].[Customer]
INNER JOIN
  [mohajeratDB].[dbo].[Document]
ON
  Customer.NationalID = Document.CustomerID;

--19
SELECT
  Customer.FName + ' ' + Customer.LName AS CustomerName,
  Visa.VisaID,
  Visa.RequestStatus,
  Visa.ImmigrationType
FROM
  [mohajeratDB].[dbo].[Visa]
INNER JOIN
  [mohajeratDB].[dbo].[Customer]
ON
  Visa.CustomerID = Customer.NationalID;

--20
SELECT
  Customer.FName + ' ' + Customer.LName AS CustomerName,
  Cost.PaymentDate,
  Cost.Amount
FROM
  [mohajeratDB].[dbo].[Customer]
LEFT JOIN
  [mohajeratDB].[dbo].[Cost]
ON
  Customer.NationalID = Cost.CustomerID
WHERE
  Cost.PaymentStatus = 'Unpaid';