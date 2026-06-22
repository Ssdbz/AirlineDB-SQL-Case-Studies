/*
Case Study 6: Average Ticket Price by Fare Class

Business Question:
What is the average ticket price for each fare condition?

Objective:
Compare pricing across different travel classes.

Concepts Used:
- AVG()
- ROUND()
- GROUP BY
*/

SELECT
    fare_conditions,
    ROUND(AVG(amount), 2) AS average_ticket_price
FROM ticket_flights
GROUP BY fare_conditions;
