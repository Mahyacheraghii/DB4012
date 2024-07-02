CREATE VIEW customer_report AS
    SELECT fname,lname,nationalID,BirthDate
    FROM [mohajeratDB].[dbo].Customer
    WHERE PassportStatus='valid';

CREATE VIEW customer_payment AS
    SELECT c.fname, c.lname, c.nationalID
    FROM [mohajeratDB].[dbo].[Customer] c
    WHERE c.nationalID IN (
        SELECT cc.CustomerID
        FROM [mohajeratDB].[dbo].[Cost] cc
        WHERE cc.PaymentStatus='Paid'
    );

CREATE VIEW customer_payment_unpaid AS
    SELECT c.fname, c.lname, c.nationalID
    FROM [mohajeratDB].[dbo].[Customer] c
    WHERE c.nationalID IN (
        SELECT cc.CustomerID
        FROM [mohajeratDB].[dbo].[Cost] cc
        WHERE cc.PaymentStatus='unpaid'
    );

CREATE VIEW customer_payment_unpaid AS
    SELECT c.fname, c.lname, c.nationalID
    FROM [mohajeratDB].[dbo].[Customer] c
    WHERE c.nationalID IN (
        SELECT cc.CustomerID
        FROM [mohajeratDB].[dbo].[Cost] cc
        WHERE cc.PaymentStatus='unpaid'
    );

CREATE VIEW customer_birthdate AS
    SELECT fname,lname,BirthDate
    FROM [mohajeratDB].[dbo].Customer
    WHERE BirthDate LIKE '1995%';
