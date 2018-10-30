
SELECT Booking.PartyID, CheckIn, CheckOut,  ActivityID, DateAndTime , PartySize, TotalPeople
FROM Booking
CROSS JOIN Activity
INNER JOIN Party ON Party.PartyID = Booking.PartyID
WHERE Activity.DateAndTime Between Booking.CheckIn AND Booking.CheckOut;




INSERT INTO ActivityBooking (PartyID, ActivityID, NumOfPeople) VALUES 
(1, 4, (SELECT PartySize FROM Party WHERE PartyID = 1)),
(2, 4, (SELECT PartySize FROM Party WHERE PartyID = 2));

SELECT * FROM ActivityBooking;