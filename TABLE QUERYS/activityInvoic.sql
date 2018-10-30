CREATE TABLE ActivityInvoice (
PartyID				INT NOT NULL,
ActivityID			INT NOT NULL,
OrganiserID			INT NOT NULL,
TotalCost			SMALLMONEY NOT NULL,
RobinsonShare		SMALLMONEY NOT NULL,
OrgainserShare      SMALLMONEY NOT NULL

CONSTRAINT FK_ActivityOrganiser FOREIGN KEY (OrganiserID)
								REFERENCES ActivityOrganiser(OrganiserID),

CONSTRAINT FK_ActivityBook FOREIGN KEY (PartyID, ActivityID)
						   REFERENCES ActivityBooking(PartyID,ActivityID),

CONSTRAINT PK_ActivityInvoice PRIMARY KEY (OrganiserID, PartyID, ActivityID),

CONSTRAINT checkNegative	CHECK
							(TotalCost !< 0 AND RobinsonShare !<0 AND OrgainserShare !<0)
);