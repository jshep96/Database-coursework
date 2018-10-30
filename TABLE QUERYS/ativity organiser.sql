CREATE TABLE ActivityOrganiser (
OrganiserID			INT PRIMARY KEY IDENTITY(1,1),
CompanyName			VARCHAR(100)	NOT NULL,
CompanyAddress		VARCHAR(100)	NOT NULL,
Website				VARCHAR(150)	NOT NULL,
Email				VARCHAR(80)		NOT NULL,
					CONSTRAINT checkEmail
					CHECK (Email LIKE '%_@__%.__%'),
Phone				VARCHAR(20)		NOT NULL
);
