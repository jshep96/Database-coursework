INSERT INTO ActivityInvoice (PartyID,ActivityID,OrganiserID,TotalCost,RobinsonShare,OrgainserShare)

SELECT PartyID , ActivityBooking.ActivityID, Activity.OrganiserID ,  0, 0, 0
 FROM   ActivityBooking, Activity, ActivityOrganiser
 WHERE  Activity.ActivityID = ActivityBooking.ActivityID  AND Activity.OrganiserID = ActivityOrganiser.OrganiserID;
  

UPDATE ActivityInvoice 
SET TotalCost = 
 PricePerPerson * NumOfPeople
FROM Activity, ActivityBooking 
WHERE ActivityInvoice.ActivityID = Activity.ActivityID And Activity.ActivityID =  ActivityBooking.ActivityID;

UPDATE ActivityInvoice 
SET RobinsonShare =
TotalCost*0.1;

UPDATE ActivityInvoice
SET OrgainserShare = 
TotalCost*0.9;