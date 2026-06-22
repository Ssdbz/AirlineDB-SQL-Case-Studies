/*
Case Study 8: Monthly Booking Trend Analysis

Business Question:
How do booking volumes change over time?

Objective:
Analyze monthly booking trends to identify seasonality and demand patterns.

Concepts Used:
- DATE_TRUNC()
- GROUP BY
- COUNT()
- ORDER BY
*/

SELECT
    DATE_TRUNC('month', book_date) AS booking_month,
    COUNT(*) AS total_bookings
FROM bookings
GROUP BY booking_month
ORDER BY booking_month;
