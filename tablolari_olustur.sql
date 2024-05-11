use foy_4;
CREATE TABLE client_master 
( 
   client_no NVARCHAR(6) PRIMARY KEY,   
   name NVARCHAR(20),
   adress1 NVARCHAR(30),
   adress2 NVARCHAR(30),
   city NVARCHAR(15),
   state NVARCHAR(15),
   pincode NUMERIC(6,0),
   bal_due NUMERIC(10,2)
 ) 
 
 CREATE TABLE product_master 
 ( 
   product_no NVARCHAR(6) PRIMARY KEY, 
   description NVARCHAR(50), 
   profit_percent NUMERIC, 
   unit_measure NVARCHAR(50), 
   qty_on_hand NUMERIC,
   reoder_lvl NUMERIC,
   sell_price NUMERIC,
   cost_price NUMERIC
 ) 
 
 CREATE TABLE salesman_master  
 ( 
   salesman_no NVARCHAR(6) PRIMARY KEY NOT NULL CHECK (LEFT(salesman_no, 1) = 'S'), 
   sal_name NVARCHAR(20) NOT NULL, 
   address NVARCHAR(50) NOT NULL,
   city NVARCHAR(20),
   state NVARCHAR(20),
   pincode NUMERIC(6),
   sal_amt NUMERIC(8,2) NOT NULL CHECK (sal_amt <> 0),
   tgt_to_get NUMERIC(6,2) NOT NULL CHECK (tgt_to_get <> 0),
   ytd_sales NUMERIC(6,2) NOT NULL CHECK (ytd_sales <> 0),
   remarks NVARCHAR(30) NOT NULL
 ) 
 
  CREATE TABLE sales_order 
  ( 
    s_order_no NVARCHAR(6) PRIMARY KEY NOT NULL CHECK (LEFT(s_order_no, 1) = '0'), 
    s_order_date DATE NOT NULL,
    client_no NVARCHAR(6) REFERENCES client_master(client_no),
    dely_add NVARCHAR(6),
    salesman_no NVARCHAR(6) REFERENCES salesman_master(salesman_no),
    dely_type CHAR(1) DEFAULT 'f' CHECK (dely_type IN ('f', 'p')), 
    billed_yn CHAR(1),
    dely_date DATE,
    order_status NVARCHAR(10) CHECK (order_status IN ('in process', 'fulfilled', 'back order', 'canceled')),
    CONSTRAINT CheckDelyDate CHECK (dely_date >= s_order_date)
  );


  CREATE TABLE sales_order_details 
 ( 
   s_order_no NVARCHAR(6) REFERENCES sales_order(s_order_no) NOT NULL, 
   FOREIGN KEY (s_order_no) REFERENCES sales_order(s_order_no),
   product_no NVARCHAR(6) REFERENCES product_master(product_no),
   FOREIGN KEY (product_no) REFERENCES product_master(product_no),
   qty_order NUMERIC(8),
   qty_disp NUMERIC(8),
   product_rate NUMERIC(10,2)
 )

