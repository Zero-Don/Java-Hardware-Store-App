Create database ZeroHardware;

Use ZeroHardware;

Create table User_Information(
	User_ID INT not null Primary Key,
    User_Name varchar(25),
    Type_of_User varchar(25)
    );
    
Create table Item_Information(
	Item_ID INT not null Primary key,
    Item_Description varchar(25),
    Total_in_Stock INT not null,
    Understock_Value float,
    Sale_Price float,
    Purchase_Price float,
    Quantity Int not null
    );
    
Create table Sales_Information(
	Sales_ID INT not null Primary key auto_increment,
    Customer_Name varchar(25),
    Sale_Price float not null,
    Item_ID INT not null,
    Customer_Sale_ID INT not null,
    foreign key (Item_ID) references Item_Information (Item_ID),
    foreign key(Customer_Sale_ID) references Customer_Sale(Customer_Sale_ID),
    Quantity_Sold INT not null,
    Date_sold date
    );
    
drop table Sales_Information;
    
Create table Customer_Sale(
Customer_Sale_ID INT not null Primary key auto_increment,
Date_sold_handler date);
    
#drop table Customer_Sale;
    
Show tables;

INSERT INTO User_Information VALUES
 (658258, "Marcia Green", "Manager","Man846351#"),
 (856936, "Kimberly Buchanon", "Cashier","nUb97453_"),
 (657642, "Tim Brown", "Manager","eftY9576"),
 (690758, "Anthony Edwards", "Cashier","cknery466"),
 (955428, "Lora Rhoden", "Cashier","nr8rufn356"),
 (145573, "Elizabeth Chung", "Cashier", "3536gjn55");
 
 
INSERT INTO Item_Information VALUES
 (0087685, "hammer", "38","4999.00", "4499.00", "3200.00");
 
INSERT INTO Sales_Information VALUES
 (8876875, "Vanessa Wint", "0087685", "1", "2020-02-20");
 
Create table Sales_Information(
	Sales_ID INT not null Primary key,
    Customer_Name varchar(25),
    Item_ID INT not null,
    foreign key (Item_ID) references Item_Information (Item_ID),
    Quantity_Sold INT not null,
    Date_sold date
    );
    
Select * from Item_Information;

Alter table Item_Information Add Quantity Int not null;

Alter table User_Information Add Password Varchar(25);

Select * from User_Information;

Alter table Item_Information drop Quantity;

Select * from User_Information;
Select * from Item_Information;

Select * from User_Information;

 
select * from Sales_Information;

 
 
 
 
 
 