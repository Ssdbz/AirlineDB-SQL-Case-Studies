/*
Case Study 4: Top Frequent Flyers

Business Question:
Which passengers have booked the highest number of tickets?

Objective:
Identify the most frequent flyers based on ticket purchases.

Concepts Used:
- GROUP BY
- COUNT()
- ORDER BY
- LIMIT
*/

SELECT
    passenger_name,
    COUNT(*) AS total_tickets
FROM tickets
GROUP BY passenger_name
ORDER BY total_tickets DESC
LIMIT 10;
