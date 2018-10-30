CREATE TRIGGER Booked ON dbo.Booking
after INSERT, UPDATE
AS 


IF EXISTS 
(

	SELECT 1 FROM inserted as x 
 INNER JOIN Booking ON x.AccommodationID = Booking.AccommodationID AND x.BookingID != Booking.BookingID
 WHERE x.CheckOut >= Booking.CheckIn AND Booking.CheckOut >= x.CheckIn

 )

 BEGIN
 ROLLBACK TRANSACTION;
 RETURN 
 END 

