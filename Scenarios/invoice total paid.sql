select TotalPrice, TotalPaid From Invoice 
inner join booking on Booking.BookingID = Invoice.BookingID
where (Booking.CheckIn BETWEEN '20170401' and '20170430')
OR (Booking.CheckOut BETWEEN '20170401' and '20170430')