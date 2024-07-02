ALTER TABLE [mohajeratDB].[dbo].[Consultant]
ADD YearsOfExperience int;

UPDATE [mohajeratDB].[dbo].[Customer]
SET FName = 'Jim'
WHERE FName = 'James' AND LName = 'Wilson';

DELETE FROM [mohajeratDB].[dbo].[Customer]
WHERE PassportStatus = 'Invalid';

ALTER TABLE [mohajeratDB].[dbo].[Cost]
ADD CONSTRAINT CHK_Cost_Amount CHECK (Amount > 0);

ALTER TABLE [mohajeratDB].[dbo].[Cost]
DROP CONSTRAINT CHK_Cost_Amount;

ALTER TABLE [mohajeratDB].[dbo].[Consultant]
ADD CONSTRAINT CHK_Consultant_Age CHECK (DATEDIFF(year, BirthDate, GETDATE()) >= 18);