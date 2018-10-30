SELECT SUM(RobinsonShare) AS TotalActivityIncome FROM ActivityInvoice
INNER JOIN ActivityBooking ON ActivityInvoice.ActivityID = ActivityBooking.ActivityID
INNER JOIN Activity ON Activity.ActivityID = ActivityBooking.ActivityID
WHERE Activity.Date BETWEEN '20170401' AND '20170430';


SELECT  Activity.ActivityID,ActivityInvoice.TotalCost, ActivityInvoice.RobinsonShare, Activity.Date FROM ActivityInvoice
INNER JOIN ActivityBooking ON ActivityInvoice.ActivityID = ActivityBooking.ActivityID
INNER JOIN Activity ON Activity.ActivityID = ActivityBooking.ActivityID
WHERE Activity.Date BETWEEN '20170401' AND '20170430';
