SELECT 
	Guest.FirstName + ' ' + Guest.LastName AS Name,  Booking.NumOfNights ,
	Party.PartySize - 1 AS AdditonalGuests
FROM 
	Booking
INNER JOIN Party ON Party.PartyID = Booking.PartyID
INNER  JOIN Guest ON Guest.GuestID = Party.LeadGuestID
WHERE Guest.FirstName = 'Quemby' AND Guest.LastName='Fitzpatrick' ;
