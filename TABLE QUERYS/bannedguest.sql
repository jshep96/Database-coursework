CREATE TABLE BannedGuest (
GuestID				INT NOT NULL REFERENCES Guest(GuestID),
DateBanned			DATETIME NOT NULL,
Reasons             VARCHAR(100) NOT NULL,

CONSTRAINT chkDateBanned CHECK (DateBanned !> GETDATE()),
CONSTRAINT PK_Bannedguest PRIMARY KEY (GuestID, DateBanned)
);