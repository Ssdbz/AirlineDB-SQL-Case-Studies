/*
Case Study 3: Airport Traffic Ranking

Business Question:
Which airports handle the highest number of departing flights?

Objective:
Rank airports based on the total number of flights departing from them.

Concepts Used:
- INNER JOIN
- GROUP BY
- COUNT()
- Window Functions (RANK)
*/

SELECT
    a.airport_name,
    COUNT(*) AS departing_flights,
    RANK() OVER (
        ORDER BY COUNT(*) DESC
    ) AS airport_rank
FROM flights f
INNER JOIN airports a
    ON f.departure_airport = a.airport_code
GROUP BY a.airport_name;
