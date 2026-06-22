/*
Case Study 1: Tickets Without Boarding Passes

Business Question:
How many tickets exist without boarding passes?

Concepts Used:
- LEFT JOIN
- NULL Handling
- COUNT()
*/

SELECT COUNT(DISTINCT t.ticket_no) AS tickets_without_boarding_pass
FROM tickets t
LEFT JOIN boarding_passes bp
ON t.ticket_no = bp.ticket_no
WHERE bp.boarding_no IS NULL;
