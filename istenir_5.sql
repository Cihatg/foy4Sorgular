CREATE VIEW DailyOrders
AS
SELECT *
FROM sales_order
WHERE CONVERT(DATE, s_order_date) = CONVERT(DATE, GETDATE());

