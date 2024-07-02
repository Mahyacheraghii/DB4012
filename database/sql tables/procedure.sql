--1
CREATE PROCEDURE GetCustomersByPassportStatus
    @PassportStatus NVARCHAR(50)
AS
BEGIN
    SELECT NationalID, FName, LName, BirthDate, PassportStatus
    FROM [dbo].[Customer]
    WHERE PassportStatus = @PassportStatus;
END;
GO

EXEC GetCustomersByPassportStatus @PassportStatus = 'Valid';

--2
CREATE PROCEDURE GetConsultantsByRelevantDegreee
    @RelevantDegree NVARCHAR(50)
AS
BEGIN
    SELECT NationalID, FName, LName, BirthDate, RelevantDegree
    FROM [dbo].[Consultant]
    WHERE RelevantDegree = @RelevantDegree;
END;
GO

EXEC GetConsultantsByRelevantDegreee @RelevantDegree = 'PhD';

--3
CREATE PROCEDURE GetDocumentByScoreOfLanExam
    @ScoreOfLanExam INT
AS
BEGIN
    SELECT PassportNumber,DocID
    FROM [dbo].[Document]
    WHERE ScoreOfLanExam > @ScoreOfLanExam;
END;
GO

EXEC GetDocumentByScoreOfLanExam @ScoreOfLanExam = 7;