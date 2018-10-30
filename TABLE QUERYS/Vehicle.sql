CREATE TABLE Vehicle (
NumberPlate		VARCHAR(20) PRIMARY KEY,
VehicleType		VARCHAR(20)  NOT NULL,
Colour			VARCHAR(20)  NOT NULL,
PartyID			INT REFERENCES Party(PartyID)
);


