use foy_4;

INSERT INTO client_master VALUES
('0001', 'Ivan', '123 Main St', 'Apt 101', 'Bombay', 'Maharasthra', 400054, 15000.00),
('0002', 'Vandana', '456 Elm St', 'Suite 202', 'Madras', 'Tamilnadu', 780001, 0.00),
('0003', 'Pramada', '789 Oak St', 'Unit 303', 'Bombay', 'Maharasthra', 400057, 5000.00),
('0004', 'Basu', '321 Pine St', 'Apt 404', 'Bombay', 'Maharasthra', 400056, 0.00),
('0006', 'Rukmini', '987 Cedar St', 'Unit 606', 'Bombay', 'Maharasthra', 400050, 1000.00);

INSERT INTO client_master (client_no, name, adress1, adress2, city, pincode, bal_due) VALUES
('0005', 'Ravi', '654 Maple St', 'Suite 505', 'Delhi', 100001, 2000.00);

INSERT INTO product_master VALUES
('P00001', '1.44 floppies', 5, 'piece', 100, 20, 525, 500),
('P03453', 'Monitors', 6, 'piece', 10, 3, 12000, 11200),
('P06734', 'Mouse', 5, 'piece', 20, 5, 1050, 500),
('P07865', '1.22 floppies', 5, 'piece', 100, 20, 525, 500),
('P07868', 'Keyboards', 2, 'piece', 10, 3, 3150, 3050),
('P07885', 'CD Drive', 2.5, 'piece', 10, 3, 5250, 5100),
('P07965', '540 HDD', 4, 'piece', 10, 3, 8400, 8000),
('P07975', '1.44 Drive', 5, 'piece', 10, 3, 1050, 1000),
('P08865', '1.22 Drive', 5, 'piece', 2, 3, 1050, 1000);


INSERT INTO salesman_master VALUES
('S50001', 'Kiran', 'A/14 worli', 'Bombay', 'Mah', 400002, 3000.00, 100.00, 50.00, 'Goo?????'),
('S50002', 'Manish', '65,nariman', 'Bombay', 'Mah', 400001, 3000.00, 200.00, 100.00, 'Goo?????'),
('S50003', 'Ravi', 'P-7 Bandra', 'Bombay', 'Mah', 400032, 3000.00, 200.00, 100.00, 'Goo?????'),
('S50004', 'ashish', 'A/5 juhu', 'Bombay', 'Mah', 400044, 3000.00, 200.00, 150.00, 'Goo?????');



INSERT INTO sales_order (s_order_no, s_order_date, client_no, salesman_no, dely_type, billed_yn, dely_date, order_status) VALUES
('019001', '1996-01-12', '0001', 'S50001', 'F', 'N', '1996-01-20', 'in process'),
('019002', '1996-01-25', '0002', 'S50002', 'P', 'N', '1996-01-27',  'canceled'),
('016865', '1996-02-18', '0003', 'S50003', 'F', 'Y', '1996-02-20', 'fulfilled'),
('019003', '1996-04-03', '0001', 'S50001', 'F', 'Y', '1996-04-07', 'fulfilled'),
('046866', '1996-05-20', '0004', 'S50002', 'P', 'N', '1996-05-22', 'canceled'),
('010008', '1996-05-24', '0005', 'S50004', 'F', 'N', '1996-05-26', 'in process');


INSERT INTO sales_order_details VALUES
('019001', 'P00001', 4, 4, 525.00),
('019001', 'P07965', 2, 1, 8400.00),
('019001', 'P07885', 2, 1, 5250.00),
('019002', 'P00001', 10, 0, 525.00),
('019003', 'P00001', 4, 4, 1050.00),
('019003', 'P03453', 2, 2, 1050.00),
('046866', 'P07868', 3, 3, 3150.00),
('046866', 'P07885', 10, 10, 5250.00),
('046866', 'P06734', 1, 1, 12000.00),
('046866', 'P07965', 1, 0, 8400.00),
('010008', 'P07975', 1, 0, 1050.00),
('010008', 'P00001', 10, 5, 525.00);
