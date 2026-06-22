/*
Case Study 10: Flights Generating Above Average Revenue

Business Question:
Which flights generate revenue greater than the average flight revenue?

Objective:
Identify high-performing flights.

Concepts Used:
- Subquery
- GROUP BY
- HAVING
- SUM()
*/

SELECT
    flight_id,
    SUM(amount) AS flight_revenue
FROM ticket_flights
GROUP BY flight_id
HAVING SUM(amount) >
(
    SELECT AVG(revenue)
    FROM
    (
        SELECT
            SUM(amount) AS revenue
        FROM ticket_flights
        GROUP BY flight_id
    ) avg_revenue
)
ORDER BY flight_revenue DESC;
