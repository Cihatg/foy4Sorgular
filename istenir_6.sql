CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    name NVARCHAR(50) NOT NULL,
    email NVARCHAR(50),
    address NVARCHAR(100) DEFAULT 'Unknown',
    phone_number NVARCHAR(15) NOT NULL DEFAULT 'N/A'
);

DELETE FROM Customer;


INSERT INTO Customer (customer_id, name, email)
VALUES
(1, 'John Doe', NULL),
(2, 'Jane Smith', NULL),
(3, 'Alice Johnson', 'adsadasd'),
(4, 'Bob Brown', NULL),
(5, 'Charlie Wilson', NULL);

