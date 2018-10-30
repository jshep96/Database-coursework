
 
DECLARE @i INT 
SET @i = 1;
WHILE @i <=25  
BEGIN
INSERT INTO Invoice (BookingID,TotalPrice,Deposit) VALUES 
((SELECT BookingID FROM Booking WHERE BookingID IN( @i)) , 
(SELECT SUM(NumOfNights * PricePerNight) FROM Booking, Accomodation WHERE Booking.BookingID IN(@i) AND Accomodation.AccomodationID = Booking.AccommodationID)
, 0)
SET @i = @i +1
END

UPDATE Invoice 
SET Deposit = TotalPrice * 0.25  
WHERE BookingID IN (SELECT Booking.BookingID FROM Booking WHERE Booking.CheckIn > GETDATE());

 SELECT * FROM Invoice;


CREATE PROCEDURE WorkoutPayment 
@BookingID INT
AS 
BEGIN
	
INSERT INTO Invoice VALUES
	(@BookingID, 
	(SELECT SUM(NumOfNights * PricePerNight) FROM Booking, Accomodation WHERE Booking.BookingID = @BookingID AND
	 Accomodation.AccomodationID = Booking.AccommodationID),
	 0, 0);


IF (SELECT Booking.CheckIn FROM Booking WHERE BookingID = @BookingID) > GETDATE()
UPDATE Invoice
	SET Deposit = TotalPrice * 0.25,
	TotalPaid = TotalPrice * 0.25
	WHERE BookingID = @BookingID

END;
		