/*
Case Study 9: Top Passengers by Spending

Business Question:
Which passengers have spent the most on airline tickets?

Objective:
Identify high-value customers based on total ticket expenditure.

Concepts Used:
- CTE
- JOIN
- SUM()
- ORDER BY
*/

WITH passenger_spending AS (
    SELECT
        t.passenger_name,
        SUM(tf.amount) AS total_spent
    FROM tickets t
    JOIN ticket_flights tf
        ON t.ticket_no = tf.ticket_no
    GROUP BY t.passenger_name
)

SELECT
    passenger_name,
    total_spent
FROM passenger_spending
ORDER BY total_spent DESC
LIMIT 10;
