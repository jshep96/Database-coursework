

CREATE TABLE Activity (
ActivityID			INT PRIMARY KEY IDENTITY(1,1),
Description			VARCHAR(50),
SuitableAgeMin		INT
					CONSTRAINT chkMin
					CHECK (SuitableAgeMin !< 0),
SuitableAgeMax		INT ,

LocationOfActivity  VARCHAR(50)		NOT NULL,
Date				DATE		    NOT NULL,
					CONSTRAINT  chkActivityDate
					CHECK (Date !< GETDATE()),

StartTime			TIME            NOT NULL,
EndTime				TIME            NOT NULL,
					CONSTRAINT chkTime
					CHECK (EndTime > StartTime),

TotalPeople			SMALLINT		NOT NULL,
PricePerPerson		SMALLMONEY		NOT NULL,
OrganiserID			INT NOT NULL REFERENCES ActivityOrganiser(OrganiserID)
);

