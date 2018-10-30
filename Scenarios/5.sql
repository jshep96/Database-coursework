

select Guest.GuestID, Guest.FirstName, Guest.LastName, Booking.CheckIn,Booking.CheckOut, Accomodation.AccType
FROM Guest
INNER JOIN PartyMembers ON PartyMembers.GuestID = Guest.GuestID
INNER JOIN Booking ON PartyMembers.PartyID = Booking.PartyID
INNER JOIN Accomodation ON Booking.AccommodationID = Accomodation.AccomodationID
WHERE GETDATE() BETWEEN Booking.CheckIn AND Booking.CheckOut
ORDER BY AccType;



