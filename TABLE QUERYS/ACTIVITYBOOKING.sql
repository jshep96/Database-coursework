CREATE TABLE ActivityBooking (
PartyID			INT NOT NULL  REFERENCES Party(PartyID),
ActivityID		INT NOT NULL  UNIQUE REFERENCES Activity(ActivityID),
NumOfPeople		SMALLINT NOT NULL

CONSTRAINT PK_ActivityBooking PRIMARY KEY (PartyID, ActivityID)
);
