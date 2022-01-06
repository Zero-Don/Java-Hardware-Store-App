# Java-Hardware-Store-App
GUI Hardware Store Application - Using Java, linked to a MySQL Database

INSTRUCTIONS:

You have been asked, to design and create a software application for a hardware store. This store has two (2) types of users - Managers and Cashiers. 

Managers are allowed to do the following:
	i.	Add new stock items
	ii.	Increase the quantity of stock items
	iii.	Remove an item from the system (not remove the quantity, but the item 		from the database)
	iv.	Change, or modify all items within the store
	v.	Perform price checks on any item
	vi.	Change their own password and reset passwords for cashiers and other 		managers
	vii.	Produce several Reports 
		a.	Daily Quantity report (List of all items that are under stock)
		b.	Total sales for each item at the end of the month

Cashiers require the following capabilities:
	i.	Deduct an item from the quantity as it is sold
	ii.	Perform price checks
	iii.	Change their own password

Your system should allow cashiers to sell items, as long as they are in stock, and should give a total bill based on items purchased and the quantity that has been purchased.  The bill total must include GCT of 16.5 %. 

The following will therefore be required in your database, however you are expected to add anything else you deem as required or important to solve your problem

User Information: UserId, UserName, Typeof User

ITEM Information: ItemId, Item Description, TotalInStock, UnderstockValue, 				      saleprice, PurchasePrice

Sales Information: SalesId, CustomerName, ItemId, Quantitysold, datesold

Purchase price is the cost the hardware spent to purchase the item.
Sales price is the cost the customer pays to purchase the item from the store.
SaleID should be automatically generated

NB: Your system MUST update the database each time an item is sold.

PROBLEMS:
Project is 90% Complete
