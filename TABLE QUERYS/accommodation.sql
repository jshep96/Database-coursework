CREATE TABLE Accomodation (
AccomodationID		INT PRIMARY KEY IDENTITY (1,1),
AccType				VARCHAR(30) NOT NULL,
					CONSTRAINT  chkType
				    CHECK (AccType IN ('Tent', 'Motorhome','Caravan','Glamping yurt')),
Capacity			TINYINT     NOT NULL,
PricePerNight		SMALLMONEY  NOT NULL,
);


