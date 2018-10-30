CREATE TRIGGER Banned ON dbo.Booking
after INSERT, UPDATE
AS 

IF EXISTS 
(

	SELECT 1 FROM inserted as x 
 INNER JOIN PartyMembers ON x.PartyID = PartyMembers.PartyID 
 INNER JOIN BannedGuest ON PartyMembers.GuestID = BannedGuest.GuestID
 
 )
 

 BEGIN
 RAISERROR('Banned Guest is trying to make a booking', 16, 1)
 ROLLBACK TRANSACTION;
 RETURN 
 END 


 

