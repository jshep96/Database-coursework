SELECT Guest.GuestID, PartyMembers.PartyID, FirstName,LastName, CheckIn, CheckOut
FROM Guest
INNER JOIN PartyMembers ON Guest.GuestID = PartyMembers.GuestID
INNER JOIN Booking ON Booking.PartyID = PartyMembers.PartyID

SELECT * FROM BannedGuest;

DROP TABLE BannedGuest;

INSERT INTO BannedGuest
VALUES 
((SELECT GuestID FROM Guest WHERE FirstName = 'Dahlia' AND LastName = 'Oliver'), '20170511', 'Fighting with other guests'),
((SELECT GuestID FROM Guest WHERE FirstName = 'Cynthia' AND LastName = 'Dillon'), '20170511', 'Vandalsim'),
((SELECT GuestID FROM Guest WHERE FirstName = 'Quemby' AND LastName = 'Fitzpatrick'), '20170505', 'Unpaid fee'),
((SELECT GuestID FROM Guest WHERE FirstName = 'Gail' AND LastName='Henson'), '20170511', 'Littering'),
((SELECT GuestID FROM Guest WHERE FirstName = 'Jesse'AND LastName='Weaver'), '20170511', 'Abuse towards staff'),
((SELECT GuestID FROM Guest WHERE FirstName = 'Joelle'AND LastName='Barron'), '20170520', 'Vandalism'),
((SELECT GuestID FROM Guest WHERE FirstName = 'Octavia'AND LastName='Navarro'), '20170515', 'Unpaid fee'),
((SELECT GuestID FROM Guest WHERE FirstName = 'Willa'AND LastName='Walker'), '20170428', 'Littering'),
((SELECT GuestID FROM Guest WHERE FirstName = 'Hyatt'AND LastName='Gray'), '20170415', 'Fighting with other guests'),
((SELECT GuestID FROM Guest WHERE FirstName = 'Imani' AND LastName= 'Martin'), '20170415', 'Abuse towards staff');

SELECT * FROM BannedGuest;

