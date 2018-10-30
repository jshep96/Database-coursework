CREATE TABLE Guest (
GuestID			INT PRIMARY KEY IDENTITY (1,1),
Title			VARCHAR(4)	 NOT NULL
					CONSTRAINT chkTitle
					CHECK  (Title IN ('Mr', 'Mrs', 'Miss', 'Ms', 'Dr')),
FirstName		VARCHAR(20)  NOT NULL,
LastName		VARCHAR(20)  NOT NULL,
DOB		        DATE	     NOT NULL
					CONSTRAINT chkBrithDate
					CHECK (DOB >= '1916-01-01'),
StreetAddress	VARCHAR(100) NOT NULL,
PostCode		VARCHAR(10)  NOT NULL,
City			VARCHAR(20)  NOT NULL,
Country			VARCHAR(15)  NOT NULL,
PhoneNo			VARCHAR(20)	 NOT NULL,
Email			VARCHAR(80)  NOT NULL UNIQUE
					CONSTRAINT chkEmail
					CHECK (Email LIKE '%_@__%.__%'),
LeadGuest       VARCHAR(3)   NOT NULL
					CONSTRAINT leadGuest
					CHECK (LeadGuest IN('YES','NO'))
);
