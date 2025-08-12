-- This script calculates the total monthly revenue and order volume from the 'orders' table.

SELECT
    EXTRACT(YEAR FROM order_date) AS sales_year,      -- Extracts the year from the order date
    EXTRACT(MONTH FROM order_date) AS sales_month,     -- Extracts the month from the order date
    SUM(amount) AS monthly_revenue,                    -- Calculates the sum of sales for the month
    COUNT(DISTINCT order_id) AS monthly_order_volume -- Counts the number of unique orders for the month
FROM
    orders                                             -- Specifies the table containing the sales data
GROUP BY
    sales_year,                                        -- Groups the data by year and then by month
    sales_month
ORDER BY
    sales_year,                                        -- Sorts the results chronologically
    sales_month;
