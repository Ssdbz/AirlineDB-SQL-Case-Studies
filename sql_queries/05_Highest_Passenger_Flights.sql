/*
Case Study 5: Flights with Highest Passenger Count

Business Question:
Which flights carried the highest number of passengers?

Objective:
Determine the busiest flights based on passenger count.

Concepts Used:
- GROUP BY
- COUNT()
- ORDER BY
*/

SELECT
    flight_id,
    COUNT(ticket_no) AS passenger_count
FROM ticket_flights
GROUP BY flight_id
ORDER BY passenger_count DESC;
