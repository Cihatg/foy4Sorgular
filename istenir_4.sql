use foy_4;
SELECT c.name AS CustomerName, p.description AS ProductName
FROM sales_order_details sod
JOIN sales_order so ON sod.s_order_no = so.s_order_no
JOIN client_master c ON so.client_no = c.client_no
JOIN product_master p ON sod.product_no = p.product_no
WHERE DATEDIFF(DAY, so.s_order_date, so.dely_date) > 10;

