CREATE DATABASE foy_4 ON PRIMARY 
( 
NAME= vtys_data, 
FILENAME = 'C:\Users\Lenovo\Desktop\foy4\vtysdata.mdf', 
SIZE = 8MB, 
MAXSIZE = UNLIMITED, 
FILEGROWTH = 10%
) 
LOG ON 
( 
NAME= vtys_log, 
FILENAME = 'C:\Users\Lenovo\Desktop\foy4\vtysdata.ldf', 
SIZE = 8MB, 
MAXSIZE = UNLIMITED, 
FILEGROWTH = 10%
) 

