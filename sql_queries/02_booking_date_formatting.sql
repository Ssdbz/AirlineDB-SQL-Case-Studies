/*
Case Study 2: Booking Date Formatting

Business Question:
Display booking dates in a standardized YYYY-MM-DD format.

Objective:
Convert timestamp values into a readable reporting format.

Concepts Used:
- Date Functions
- Formatting
- Data Cleaning
*/

SELECT
    book_ref,
    TO_CHAR(book_date, 'YYYY-MM-DD') AS book_date,
    total_amount
FROM bookings;
