/*
Case Study 1: Tickets Without Boarding Passes

Business Question:
How many tickets exist without boarding passes?

Concepts Used:
- LEFT JOIN
- NULL Handling
- COUNT()
*/

SELECT coun(distinct t.ticket_no)
from tickets t
left join boarding_passes bp 
on t.ticket_no = bp.ticket_no
where bp.boarding_passes is null;
