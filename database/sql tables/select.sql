SELECT * 
FROM [mohajeratDB].[dbo].[Consultant]

SELECT FName, LName
FROM [mohajeratDB].[dbo].[Customer]
WHERE FName LIKE 'emma%'

SELECT PassportNumber
FROM [mohajeratDB].[dbo].[Document]
WHERE AmountOfFinancing>30000

SELECT TrackingNumber
FROM [mohajeratDB].[dbo].[cost]
WHERE PaymentStatus='paid'

SELECT CustomerID
FROM [mohajeratDB].[dbo].[Choose]
WHERE CountryID=5

SELECT fname
FROM [mohajeratDB].[dbo].[Customer]
WHERE NationalID in (SELECT customerID FROM [mohajeratDB].[dbo].[Counseling] WHERE ConsultantID='C000000002')

SELECT fname,lname
FROM [mohajeratDB].[dbo].[Customer]
WHERE NationalID in (SELECT customerID FROM [mohajeratDB].[dbo].[Choose] WHERE CountryID=10)

SELECT CustomerID
FROM [mohajeratDB].[dbo].[Visa]
WHERE RequestStatus='EXPIRED'

SELECT fname,lname
FROM [mohajeratDB].[dbo].[Customer]
WHERE NationalID in (SELECT customerID FROM [mohajeratDB].[dbo].[Document] WHERE DocID in (SELECT DocID FROM [mohajeratDB].[dbo].[Work] WHERE FieldOfOccupation='Computer Science'))

SELECT fname,lname,NationalID
FROM [mohajeratDB].[dbo].[Customer]
WHERE NationalID in (SELECT customerID FROM [mohajeratDB].[dbo].[Document] WHERE DocID in (SELECT DocID FROM [mohajeratDB].[dbo].[Entrepreneurship] WHERE LastEducationalCertificate='masters degree' or SpecialSkills='Yes'))

SELECT fname,lname,BirthDate
FROM [mohajeratDB].[dbo].[Customer]
WHERE NationalID in (SELECT customerID FROM [mohajeratDB].[dbo].[Document] WHERE DocID in (SELECT DocID FROM [mohajeratDB].[dbo].[Educational] WHERE GPAOfTheLastDegree=3.9))

SELECT fname,lname,BirthDate
FROM [mohajeratDB].[dbo].[Customer]
WHERE NationalID in (SELECT customerID FROM [mohajeratDB].[dbo].[Document] WHERE DocID in (SELECT DocID FROM [mohajeratDB].[dbo].[Marriage] WHERE MarriageCertificate='MC12345601'))

SELECT fname,lname,BirthDate
FROM [mohajeratDB].[dbo].[Customer]
WHERE NationalID in (SELECT customerID FROM [mohajeratDB].[dbo].[Document] WHERE DocID in (SELECT DocID FROM [mohajeratDB].[dbo].[Turism] WHERE Turismtype='Cultural'))

SELECT fname,lname,BirthDate
FROM [mohajeratDB].[dbo].[Customer]
WHERE NationalID in (SELECT customerID FROM [mohajeratDB].[dbo].[Document] WHERE DocID in (SELECT DocID FROM [mohajeratDB].[dbo].[investment] WHERE AmountOfCapital>140000))
