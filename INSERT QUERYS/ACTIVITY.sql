
INSERT INTO ActivityBooking (PartyID, ActivityID, NumOfPeople) VALUES 
(1, 4, (SELECT PartySize FROM Party WHERE PartyID = 1)),
(2, 5, (SELECT PartySize FROM Party WHERE PartyID = 2)),
(3, 9, (SELECT PartySize FROM Party WHERE PartyID = 3)),
(3, 6, (SELECT PartySize FROM Party WHERE PartyID = 4)),
(7, 7, (SELECT PartySize FROM Party WHERE PartyID = 5)),
(6, 8, (SELECT PartySize FROM Party WHERE PartyID = 6)),
(3, 1, (SELECT PartySize FROM Party WHERE PartyID = 7)),
(8, 10, (SELECT PartySize FROM Party WHERE PartyID = 8)),
(9, 3, (SELECT PartySize FROM Party WHERE PartyID = 9)),
(1, 2, (SELECT PartySize FROM Party WHERE PartyID = 1));

SELECT * FROM ActivityBooking;