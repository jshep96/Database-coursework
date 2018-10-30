CREATE TABLE PartyMembers (
GuestID			INT  NOT NULL,
PartyID			INT  NOT NULL

CONSTRAINT PK_PartyMem       PRIMARY KEY (GuestID, PartyID),
CONSTRAINT FK_PartyMemGuest  FOREIGN KEY (GuestID) 
						     REFERENCES  Guest(GuestID),
CONSTRAINT FK_PartyMemParty  FOREIGN KEY (PartyID)
							 REFERENCES  Party(PartyID)
);


