BEGIN TRANSACTION CreateBooking
BEGIN TRY

DECLARE @guestid INT;
DECLARE @partyid INT;

INSERT INTO Guest VALUES
('Mr','Luke','Ribero','19940816', '18 FreshWater Avenue', 'RM6 4DT','London','United Kingdom', '07447400448' , 'lukerib94@gmail.com', 'YES');
SELECT @guestId = SCOPE_IDENTITY();

INSERT INTO Party VALUES
(4, 2, 2, 0, @guestId);
SELECT @partyid = SCOPE_IDENTITY();

INSERT INTO PartyMembers VALUES (@guestId, @partyid); 

INSERT INTO Guest (Title, FirstName, LastName, DOB, StreetAddress, PostCode, City, Country, PhoneNo, Email) VALUES 
('Mrs','Bella','Ribero','19960505', '18 FreshWater Avenue', 'RM6 4DT','London', 'United Kingdom', '07676345123' , 'bellarib@gmail.com');
SELECT @guestid = SCOPE_IDENTITY();
INSERT INTO PartyMembers VALUES (@guestid,@partyid);

INSERT INTO Guest  (Title, FirstName, LastName, DOB, StreetAddress, PostCode, City, Country, PhoneNo, Email) VALUES
('Mr','Paul','Ribero','20070528', '18 FreshWater Avenue', 'RM6 4DT','London', 'United Kingdom', '07676345123' , 'paulisthebest@hotmail.com');
SELECT @guestid = SCOPE_IDENTITY();
INSERT INTO PartyMembers VALUES (@guestid,@partyid);

INSERT INTO Guest (Title, FirstName, LastName, DOB, StreetAddress, PostCode, City, Country, PhoneNo, Email) VALUES
('Miss','Tara','Ribero','2011220', '18 FreshWater Avenue', 'RM6 4DT','London', 'United Kingdom', '07676345123' , 'Tara123@gmail.com');
SELECT @guestid = SCOPE_IDENTITY();
INSERT INTO PartyMembers VALUES (@guestid,@partyid);

INSERT INTO Booking VALUES 
(@partyid, 
(SELECT TOP 1 AccomodationID FROM Accomodation WHERE AccType = 'Motorhome' AND Capacity = 4),
'20170418', '20170423');

COMMIT TRANSACTION CreateBooking;
END TRY
BEGIN CATCH
ROLLBACK TRANSACTION CreateBooking;
END CATCH;
