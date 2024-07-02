create table Consultant(
NationalID nvarchar(10) primary key,
FName nvarchar(100),
LName nvarchar(100),
PhoneNumber nvarchar(11),
BirthDate date,
Addres nvarchar(500),
RelevantDegree nvarchar(50)
);

create table Customer(
NationalID nvarchar(10) primary key,
FName nvarchar(100),
LName nvarchar(100),
PhoneNumber nvarchar(11),
BirthDate date,
Addres nvarchar(500),
PassportStatus nvarchar(50)
);

create table country(
CountryID int primary key,
CountryName nvarchar(100),
CLanguage nvarchar(100),
GDP float,
Cpopulation int,
Continent nvarchar(100),
RanckedUniversities int
);

create table Visa(
VisaID int identity primary key,
RequestDate date,
VisaStatus nvarchar(50),
ImmigrationType nvarchar(100),
RequiredDocs nvarchar(50),
CustomerID nvarchar(10),
FOREIGN KEY (CustomerID) REFERENCES Customer(NationalID)
);

create table Cost(
CostID int identity primary key,
PaymentDate date,
PaymentStatus nvarchar(50),
Amount int,
TrackingNumber int,
CustomerID nvarchar(10),
FOREIGN KEY (CustomerID) REFERENCES Customer(NationalID)
);

create table Document(
DocID int identity primary key,
PassportNumber nvarchar(9),
SpecialDisease nvarchar(50),
ScoreOfLanExam float,
LanguageCertificate nvarchar(50),
AmountOfFinancing float,
Clearances nvarchar(50),
CustomerID nvarchar(10),
FOREIGN KEY (CustomerID) REFERENCES Customer(NationalID)
);

create table Marriage(
DocID int primary key,
MarriageCertificate nvarchar(50),
FOREIGN KEY (DocID) REFERENCES Document(DocID)
);

create table Work(
DocID int primary key,
FOREIGN KEY (DocID) REFERENCES Document(DocID),
GPAOfTheLastDegree nvarchar(50),
FieldOfOccupation nvarchar(50),
DurationOfOccupation nvarchar(100),
LastEducationalCertificate nvarchar(50),
SpecialSkills nvarchar(50)
);

create table Educational(
DocID int primary key,
FOREIGN KEY (DocID) REFERENCES Document(DocID),
SpecialSkills nvarchar(255),
GPAOfTheLastDegree float,
LastEducationalCertificate nvarchar(50)
);

create table Turism(
DocID int primary key,
FOREIGN KEY (DocID) REFERENCES Document(DocID),
Turismtype nvarchar(150)
);

create table Entrepreneurship(
DocID int primary key,
FOREIGN KEY (DocID) REFERENCES Document(DocID),
GPAOfTheLastDegree float,
FieldOfOccupation nvarchar(150),
DurationOfOccupation nvarchar(100),
LastEducationalCertificate nvarchar(50),
SpecialSkills nvarchar(50) 
);

create table investment(
DocID int primary key,
FOREIGN KEY (DocID) REFERENCES Document(DocID),
AmountOfCapital float
);

create table Counseling(
CustomerID nvarchar(10),
FOREIGN KEY (CustomerID) REFERENCES Customer(NationalID),
ConsultantID nvarchar(10),
FOREIGN KEY (ConsultantID) REFERENCES Consultant(NationalID)
);

create table Choose(
CustomerID nvarchar(10),
FOREIGN KEY (CustomerID) REFERENCES Customer(NationalID),
CountryID int,
FOREIGN KEY (CountryID) REFERENCES country(CountryID)
);