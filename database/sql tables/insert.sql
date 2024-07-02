INSERT INTO [mohajeratDB].[dbo].[Consultant] (NationalID, FName, LName, PhoneNumber, BirthDate, Addres, RelevantDegree) VALUES 
('C000000001', 'Lucas', 'Morris', '5551000001', '1985-10-01', '101 First St, Citytown', 'PhD'),
('C000000002', 'Sophia', 'Clark', '5551000002', '1979-04-12', '102 Second St, Oldtown', 'PhD'),
('C000000003', 'Ethan', 'Johnson', '5551000003', '1981-06-24', '103 Third St, Newville', 'Masters'),
('C000000004', 'Emily', 'Davis', '5551000004', '1976-11-30', '104 Fourth St, Eastville', 'PhD'),
('C000000005', 'Michael', 'Brown', '5551000005', '1982-09-16', '105 Fifth St, Westville', 'Masters'),
('C000000006', 'Eva', 'Jackson', '5551000006', '1987-03-10', '106 Sixth St, Northville', 'PhD'),
('C000000007', 'Oliver', 'Miller', '5551000007', '1975-07-25', '107 Seventh St, Southville', 'Masters'),
('C000000008', 'Ava', 'Martinez', '5551000008', '1980-02-14', '108 Eighth St, Lakecity', 'PhD'),
('C000000009', 'Mason', 'Harris', '5551000009', '1983-05-07', '109 Ninth St, Rivercity', 'Masters'),
('C000000010', 'Mia', 'Gonzalez', '5551000010', '1984-12-23', '110 Tenth St, Hilltop', 'PhD');

INSERT INTO [mohajeratDB].[dbo].[Customer] (NationalID, FName, LName, PhoneNumber, BirthDate, Addres, PassportStatus) VALUES 
('N000000001', 'James', 'Wilson', '5552000001', '1992-06-01', '201 First Rd, Citytown', 'Valid'),
('N000000002', 'Emma', 'Wood', '5552000002', '1990-02-15', '202 Second Rd, Townplace', 'Valid'),
('N000000003', 'William', 'Smith', '5552000003', '1988-10-30', '203 Third Ave, Placeville', 'Valid'),
('N000000004', 'Isabella', 'Taylor', '5552000004', '1994-04-05', '204 Fourth Blvd, Villeville', 'Valid'),
('N000000005', 'Jacob', 'Thompson', '5552000005', '1986-08-20', '205 Fifth Lane, Cityside', 'Valid'),
('N000000006', 'Olivia', 'White', '5552000006', '1987-12-11', '206 Sixth Place, Townside', 'Valid'),
('N000000007', 'Daniel', 'Jones', '5552000007', '1989-03-23', '207 Seventh St, Villageside', 'Valid'),
('N000000008', 'Sophie', 'Anderson', '5552000008', '1991-09-13', '208 Eighth Ave, Citycenter', 'Valid'),
('N000000009', 'Matthew', 'Lewis', '5552000009', '1993-05-30', '209 Ninth St, Towncenter', 'Valid'),
('N000000010', 'Lily', 'Hernandez', '5552000010', '1995-07-22', '210 Tenth Blvd, Villecenter', 'Valid'),
('N000000011', 'hannah', 'elise', '5552000011', '1993-08-30', '210 Ninth St, Towncenter', 'Valid'),
('N000000012', 'emma', 'elise', '5552000012', '1995-09-22', '211 Tenth Blvd, Villecenter', 'Valid');

INSERT INTO [mohajeratDB].[dbo].[country] (CountryID, CountryName, CLanguage, GDP, Cpopulation, Continent, RanckedUniversities) VALUES 
(1, 'United States', 'English', 21400000, 331002651, 'North America', 150),
(2, 'France', 'French', 2715000, 65273511, 'Europe', 39),
(3, 'Germany', 'German', 3846000, 83783942, 'Europe', 45),
(4, 'United Kingdom', 'English', 2827000, 67886011, 'Europe', 78),
(5, 'Canada', 'English, French', 1643000, 37742154, 'North America', 26),
(6, 'Australia', 'English', 1393000, 25499884, 'Oceania', 35),
(7, 'Japan', 'Japanese', 5065000, 126476461, 'Asia', 82),
(8, 'Italy', 'Italian', 2001000, 60461826, 'Europe', 34),
(9, 'Brazil', 'Portuguese', 1847000, 212559417, 'South America', 20),
(10, 'South Korea', 'Korean', 1638000, 51269185, 'Asia', 29);

INSERT INTO [mohajeratDB].[dbo].[Counseling] (CustomerID, ConsultantID) VALUES 
('N000000001', 'C000000001'),
('N000000002', 'C000000002'),
('N000000003', 'C000000003'),
('N000000004', 'C000000004'),
('N000000005', 'C000000005'),
('N000000006', 'C000000006'),
('N000000007', 'C000000007'),
('N000000008', 'C000000008'),
('N000000009', 'C000000009'),
('N000000010', 'C000000010');

INSERT INTO [mohajeratDB].[dbo].[Cost] (PaymentDate, PaymentStatus, Amount, TrackingNumber, CustomerID) VALUES 
('2023-07-01', 'Paid', 500, 1111111111, 'N000000001'),
('2023-07-02', 'Unpaid', 800, 1111111112, 'N000000002'),
('2023-07-03', 'Paid', 750, 1111111113, 'N000000003'),
('2023-07-04', 'Unpaid', 650, 1111111114, 'N000000004'),
('2023-07-05', 'Paid', 600, 1111111115, 'N000000005'),
('2023-07-06', 'Unpaid', 550, 1111111116, 'N000000006'),
('2023-07-07', 'Paid', 700, 1111111117, 'N000000007'),
('2023-07-08', 'Unpaid', 400, 1111111118, 'N000000008'),
('2023-07-09', 'Paid', 450, 1111111119, 'N000000009'),
('2023-07-10', 'Unpaid', 500, 1111111120, 'N000000010'),
('2023-07-10', 'Unpaid', 500, 1111111120, 'N000000011'),
('2023-07-10', 'Unpaid', 500, 1111111120, 'N000000012');


INSERT INTO [mohajeratDB].[dbo].[Choose] (CustomerID, CountryID) VALUES 
('N000000001', 1),
('N000000002', 2),
('N000000003', 3),
('N000000004', 4),
('N000000005', 5),
('N000000006', 6),
('N000000007', 7),
('N000000008', 8),
('N000000009', 9),
('N000000010', 10),
('N000000011', 9),
('N000000012', 10);


INSERT INTO [mohajeratDB].[dbo].[Document] (PassportNumber, SpecialDisease, ScoreOfLanExam, LanguageCertificate, AmountOfFinancing, Clearances, CustomerID) VALUES 
('X12345601', 'Yes', 7, 'Yes', 10000, 'No', 'N000000001'),
('X12345602', 'No', 6, 'Yes', 50000, 'No', 'N000000002'),
('X12345603', 'Yes', 6.5, 'Yes', 100000, 'No', 'N000000003'),
('X12345604', 'No', 8, 'Yes', 30000, 'No', 'N000000004'),
('X12345605', 'No', 8, 'Yes', 50000, 'No', 'N000000005'),
('X12345606', 'No', 6, 'Yes', 50000, 'No', 'N000000006'),
('X12345607', 'Yes', 0, 'No', 60000, 'Yes', 'N000000007'),
('X12345608', 'No', 7, 'Yes', 40000, 'No', 'N000000008'),
('X12345609', 'No', 0, 'No', 30000, 'Yes', 'N000000009'),
('X12345610', 'Yes', 8.5, 'Yes', 10000, 'No', 'N000000010'),
('X12345611', 'No', 0, 'No', 30000, 'Yes', 'N000000011'),
('X12345612', 'Yes', 8.5, 'Yes', 10000, 'No', 'N000000012');



INSERT INTO [mohajeratDB].[dbo].[Marriage] (DocID, MarriageCertificate)
VALUES (1, 'MC12345601');


INSERT INTO [mohajeratDB].[dbo].[Marriage] (DocID, MarriageCertificate)
VALUES (2, 'MC12345602');


INSERT INTO [mohajeratDB].[dbo].[Work] (DocID, GPAOfTheLastDegree, FieldOfOccupation, DurationOfOccupation, LastEducationalCertificate, SpecialSkills)
VALUES (3, '3.7', 'Computer Science', '5 years', 'masters degree', 'Yes');


INSERT INTO [mohajeratDB].[dbo].[Work] (DocID, GPAOfTheLastDegree, FieldOfOccupation, DurationOfOccupation, LastEducationalCertificate, SpecialSkills)
VALUES (4, '3.9', 'Electrical Engineering', '3 years', 'masters degree', 'No');


INSERT INTO [mohajeratDB].[dbo].[Turism] (DocID, Turismtype)
VALUES (5, 'Cultural');


INSERT INTO [mohajeratDB].[dbo].[Turism] (DocID, Turismtype)
VALUES (6, 'Adventure');


INSERT INTO [mohajeratDB].[dbo].[Educational] (DocID, SpecialSkills, GPAOfTheLastDegree, LastEducationalCertificate)
VALUES (7, 'Yes', 3.9, 'masters degree');


INSERT INTO [mohajeratDB].[dbo].[Educational] (DocID, SpecialSkills, GPAOfTheLastDegree, LastEducationalCertificate)
VALUES (8, 'Yes', 3.8, 'masters degree');


INSERT INTO [mohajeratDB].[dbo].[Entrepreneurship] (DocID, GPAOfTheLastDegree, FieldOfOccupation, DurationOfOccupation, LastEducationalCertificate, SpecialSkills)
VALUES (9, 3.6, 'Agricultural Startups', '2 years', 'masters degree', 'Yes');


INSERT INTO [mohajeratDB].[dbo].[Entrepreneurship] (DocID, GPAOfTheLastDegree, FieldOfOccupation, DurationOfOccupation, LastEducationalCertificate, SpecialSkills)
VALUES (10, 4.0, 'Tech Startups', '1 year', 'masters degree', 'No');


INSERT INTO [mohajeratDB].[dbo].[investment] (DocID, AmountOfCapital)
VALUES (11, 150000.00);


INSERT INTO [mohajeratDB].[dbo].[investment] (DocID, AmountOfCapital)
VALUES (12, 250000.00);


INSERT INTO [mohajeratDB].[dbo].[Visa] (RequestDate, RequestStatus, ImmigrationType, RequiredDocs, CustomerID) VALUES 
('2023-10-01', 'Yes', 'Marriage', 'Yes', 'N000000001'),
('2023-10-01', 'No', 'Marriage', 'Yes', 'N000000002'),
('2023-10-01', 'Expired', 'Work', 'Yes', 'N000000003'),
('2023-10-01', 'Yes', 'Work', 'Yes', 'N000000004'),
('2023-10-01', 'No', 'Turism', 'Yes', 'N000000005'),
('2023-10-01', 'Yes', 'Turism', 'Yes', 'N000000006'),
('2023-10-01', 'No', 'Educational', 'Yes', 'N000000007'),
('2023-10-01', 'No', 'Educational', 'Yes', 'N000000008'),
('2023-10-01', 'Expired', 'Entrepreneurship', 'Yes', 'N000000009'),
('2023-10-01', 'No', 'Entrepreneurship', 'Yes', 'N000000010'),
('2023-10-01', 'Yes', 'investment', 'Yes', 'N000000011'),
('2023-10-01', 'No', 'investment', 'Yes', 'N000000012');