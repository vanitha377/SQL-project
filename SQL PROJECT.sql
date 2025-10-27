SELECT * FROM movie_slot.movie_booking WHERE ReleaseDate BETWEEN '2024-01-01' AND '2024-12-31';
SELECT * FROM movie_slot.movie_booking;
SELECT Title, Genre FROM movie_slot.movie_booking;
SELECT DISTINCT Genre FROM movie_slot.movie_booking;
SELECT * FROM movie_slot.movie_booking_customers WHERE City = 'Chennai';
SELECT * FROM movie_slot.movie_booking_booking where SeatsBooked > 3;
SELECT * FROM movie_slot.movie_booking_payments where Status = 'Pending';
SELECT * FROM movie_slot.movie_booking WHERE ReleaseDate BETWEEN '01-01-2023' AND '01-01-2024';
SELECT * FROM movie_slot.movie_booking_shows WHERE TicketPrice BETWEEN 200 AND 400;
SELECT * FROM movie_slot.movie_booking_customers WHERE Name LIKE 'C%';
SELECT * FROM movie_slot.movie_booking ORDER BY ReleaseDate ASC;
SELECT * FROM movie_slot.movie_booking_booking ORDER BY BookingDate DESC;
SELECT CustomerID, SUM(SeatsBooked) FROM movie_slot.movie_booking_booking GROUP BY CustomerID;
SELECT PaymentID, SUM(Amount) AS Total_Amount_paid FROM movie_slot.movie_booking_payments GROUP BY PaymentID;
SELECT ShowID, COUNT(*) FROM movie_slot.movie_booking_booking GROUP BY ShowID;
SELECT CustomerID, COUNT(*) TotalBookings FROM movie_slot.movie_booking_booking GROUP BY CustomerID HAVING COUNT(*) > 2;
SELECT ShowID, SUM(SeatsBooked) FROM movie_slot.movie_booking_booking GROUP BY ShowID HAVING SUM(SeatsBooked) > 10; 
DELETE FROM movie_slot.movie_booking_booking WHERE BookingID = 5 ;
DELETE FROM movie_slot.movie_booking_payments WHERE Status = 'Pending' AND PaymentDate < '2024-01-01';
SELECT * FROM movie_slot.movie_booking_customers order by CustomerID LIMIT 5;
SELECT * FROM movie_slot.movie_booking_customers ORDER BY CustomerID LIMIT 5 OFFSET 5;
SELECT DISTINCT CustomerID FROM movie_slot.movie_booking_booking WHERE ShowID IN ( SELECT ShowID FROM movie_slot.movie_booking_shows WHERE TicketPrice > 400 );
SELECT DISTINCT MovieID FROM movie_slot.movie_booking_shows WHERE ShowID IN (SELECT ShowID FROM movie_slot.movie_booking_booking GROUP BY ShowID HAVING COUNT(BookingID) > 10);
SELECT c.Name, b.BookingID, b.SeatsBooked, b.BookingDate FROM movie_slot.movie_booking_customers c INNER JOIN movie_slot.movie_booking_booking b ON c.CustomerID = b.CustomerID;
SELECT s.ShowID, s.ShowDate, s.TicketPrice, m.Title FROM movie_slot.movie_booking_shows s LEFT JOIN movie_slot.movie_booking m ON s.MovieID = m.MovieID;
SELECT b.BookingID, b.CustomerID, p.PaymentID, p.Amount, p.Status FROM movie_slot.movie_booking_booking b RIGHT JOIN movie_slot.movie_booking_payments p ON b.BookingID = p.BookingID;
SELECT s.ShowID, m.Title AS MovieTitle, t.Name , s.ShowDate FROM movie_slot.movie_booking_shows s INNER JOIN movie_slot.movie_booking m ON s.MovieID = m.MovieID INNER JOIN movie_slot.movie_booking_theatre t ON s.TheatreID = t.TheatreID;
SELECT CustomerID, BookingDate, COUNT(DISTINCT ShowID)  FROM movie_slot.movie_booking_booking GROUP BY CustomerID, BookingDate HAVING COUNT(DISTINCT ShowID) > 1;





 

