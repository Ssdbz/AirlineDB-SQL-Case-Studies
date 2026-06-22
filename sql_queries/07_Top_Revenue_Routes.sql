/*
Case Study 7: Top Revenue Generating Routes

Business Question:
Which routes generate the highest ticket revenue?

Objective:
Identify the most profitable routes in the airline network.

Concepts Used:
- JOIN
- SUM()
- GROUP BY
- ORDER BY
*/

SELECT
    f.departure_airport,
    f.arrival_airport,
    SUM(tf.amount) AS total_revenue
FROM flights f
INNER JOIN ticket_flights tf
ON f.flight_id = tf.flight_id
GROUP BY
    f.departure_airport,
    f.arrival_airport
ORDER BY total_revenue DESC
LIMIT 5;
