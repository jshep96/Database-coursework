CREATE TABLE Invoice (
AccInvoiceID		INT PRIMARY KEY IDENTITY(1,1),
BookingID			INT REFERENCES Booking(BookingID),
TotalPrice		    MONEY  NOT NULL,
Deposit				MONEY  NOT NULL,
TotalPaid			MONEY,
DatePaid			DATETIME

);