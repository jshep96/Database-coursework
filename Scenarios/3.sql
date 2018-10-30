BEGIN TRANSACTION CreateBooking2
BEGIN TRY

DECLARE @guestid INT;
DECLARE @partyid INT;

INSERT INTO Guest VALUES
('Mr','David','Jones','19820306', '39 Brookside', 'EN4 8TT','London','United Kingdom', '0782678392' , 'DJones@trentschool.org', 'YES');
SELECT @guestId = SCOPE_IDENTITY();

INSERT INTO Party VALUES
(10, 3, 7, 0, @guestId);
SELECT @partyid = SCOPE_IDENTITY();

INSERT INTO PartyMembers VALUES (@guestId, @partyid); 

INSERT INTO Guest (Title, FirstName, LastName, DOB, StreetAddress, PostCode, City, Country, PhoneNo, Email) VALUES 
('Miss','Amelia','Scott','19700509', '1 littlegrove', 'EN4 89T','London', 'United Kingdom', '0776354789' , 'Ascott@trentschool.org');
SELECT @guestid = SCOPE_IDENTITY();
INSERT INTO PartyMembers VALUES (@guestid,@partyid);

INSERT INTO Guest  (Title, FirstName, LastName, DOB, StreetAddress, PostCode, City, Country, PhoneNo, Email) VALUES
('Mr','Fred','Henderson','19730816', '18 Churchhill Road', 'EN5 7NR','London', 'United Kingdom', '07662333456' , 'Fhenderson@trentschool.org');
SELECT @guestid = SCOPE_IDENTITY();
INSERT INTO PartyMembers VALUES (@guestid,@partyid);



INSERT INTO Guest (Title, FirstName, LastName, DOB, StreetAddress, PostCode, City, Country, PhoneNo, Email) VALUES
('Miss','Kim','Kardasian','20011012', '52 Bournechurch Road', 'EN4 5YT','London', 'United Kingdom', '02084470036' , 'Kimmygirl@gmail.com');
SELECT @guestid = SCOPE_IDENTITY();
INSERT INTO PartyMembers VALUES (@guestid,@partyid);

INSERT INTO Guest (Title, FirstName, LastName, DOB, StreetAddress, PostCode, City, Country, PhoneNo, Email) VALUES
('Miss','Michelle','Simpson','20010318', '57 Bournechurch Road', 'EN4 5YT','London', 'United Kingdom', '02088876354' , 'Michsimpson@gmail.com');
SELECT @guestid = SCOPE_IDENTITY();
INSERT INTO PartyMembers VALUES (@guestid,@partyid);

INSERT INTO Guest (Title, FirstName, LastName, DOB, StreetAddress, PostCode, City, Country, PhoneNo, Email) VALUES
('Mr','Jake','Simpson','20010318', '57 Bournechurch Road', 'EN4 5YT','London', 'United Kingdom', '02088876354' , 'Jakesimpson@gmail.com');
SELECT @guestid = SCOPE_IDENTITY();
INSERT INTO PartyMembers VALUES (@guestid,@partyid);

INSERT INTO Guest (Title, FirstName, LastName, DOB, StreetAddress, PostCode, City, Country, PhoneNo, Email) VALUES
('Miss','Frankie','Holiday','20010504', '25 Milner Road', 'EN6 7HY','London', 'United Kingdom', '02089987655' , 'Frankie001@gmail.com');
SELECT @guestid = SCOPE_IDENTITY();
INSERT INTO PartyMembers VALUES (@guestid,@partyid);

INSERT INTO Guest (Title, FirstName, LastName, DOB, StreetAddress, PostCode, City, Country, PhoneNo, Email) VALUES
('Mr','Liam','Moony','20010917', '11 Avendale Av', 'EN3 3XR','London', 'United Kingdom', '02084432256' , 'FootballKing@gmail.com');
SELECT @guestid = SCOPE_IDENTITY();
INSERT INTO PartyMembers VALUES (@guestid,@partyid);

INSERT INTO Guest (Title, FirstName, LastName, DOB, StreetAddress, PostCode, City, Country, PhoneNo, Email) VALUES
('Mr','Ryan','Crossley','20011129', '82 Cresent Road', 'EN5 9JJ','London', 'United Kingdom', '02089967836' , 'Fatboyryan@gmail.com');
SELECT @guestid = SCOPE_IDENTITY();
INSERT INTO PartyMembers VALUES (@guestid,@partyid);

INSERT INTO Guest (Title, FirstName, LastName, DOB, StreetAddress, PostCode, City, Country, PhoneNo, Email) VALUES
('Miss','Ester','Oljua','20010207', '88 Park Street', 'EN7 4ZZ','London', 'United Kingdom', '02089995425' , 'Prettygirl123@gmail.com');
SELECT @guestid = SCOPE_IDENTITY();
INSERT INTO PartyMembers VALUES (@guestid,@partyid);



INSERT INTO Booking VALUES 
(@partyid, 
 (SELECT TOP 1 AccomodationID FROM Accomodation WHERE AccType = 'Tent' AND Capacity = 6),
'20170601', '20170608');

INSERT INTO Booking VALUES 
(@partyid, 
 (SELECT TOP 1 AccomodationID FROM Accomodation WHERE AccType = 'Tent' AND Capacity = 4),
'20170601', '20170608');


COMMIT TRANSACTION CreateBooking2;
END TRY
BEGIN CATCH
ROLLBACK TRANSACTION CreateBooking2;
END CATCH;


