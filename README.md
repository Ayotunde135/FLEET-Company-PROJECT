**K2A Fleets and Machineries Inc.**

**Background Information**

K2A Fleets and Machineries Company experienced exponential growth in equipment sales in 2016 and expanded sales beyond North America. To manage expected sales transactions, K2A decided to procure a new S&M Software. Protecting transactional data, operational and sales strategies, product and customer information placed K2A as the leader in the North America Fleets industry. As a result of aggressive marketing, discounting, and other incentives head-to-head by competitors (Eko Fleets Inc., Glover Equipment, Epetedo Engineering, and Ebute–Metta Motors), K2A strictly protected their data from non-management employees and consultants.

S&M Software needs testing with data before deployment into the production environment. All deliverables required by the S&M Software implementation team must be implemented using SQL Server Database and T-SQL only.

**Data Information**
S&M software requires four normalized tables (Float Category, Equipment, Customer, and Equipment Transaction). Referential data integrity is maintained on the tables to provide an accurate and precise testing dataset that mimics K2A's live dataset.

**Below are the data and tables information:**
a. Float category - This contains hidden discounted percent applies to customer apart 
from the displayed discount. This is based on the equipment category and business 
rules defined below.
----Float Category Table-----
 FloatCategoryID int
 FloatRate float
 FloatExceedQty float
 FloatExceedRate float
 
---Float Category data----
 1,0.4,15,0.7
 2,0.1,15,0.6
 3,0.2,50,0.75
 4,0.24,68,0.9
 5,0.12,100,1.8

**Equipment information-** This contains information about equipment with
associated discount percent and float category. There is one to many relationships
between float category and equipment.
**----Equipment table-----**
- EquipmentID int
- EqupimentName vachar(255)
- UnitPrice decimal (12,2)
- DiscountPercent float,
- FloatCategoryID int

**----Equipment Data-----**
1, ' Cup -Lock System of Shuttering – 3.2 M high',122.50,0.015,1
2, 'Steel Props – 4.2 M High',100,0.02,1
3, 'Steel shuttering plates – 3 ft x 2 ft',1000.50,0.05,1 
4, 'Steel section Girders – 8ft to 12 ft' ,1700.00,0.01,1
5, 'Steel pipes for scaffolding',15000.00,0.08,1
6, 'Telescopic Girders',200,0.4,1
7, 'Tower Crane',233,0.14,1
8, 'Tractor mounted Crane' ,105,0.4,1
9, 'Concrete batching plant' ,1325.70,0.015,1
10, 'Mobile batching plant' ,99.87,0.011,1
11, 'Concrete Pump (Greaves – 40 cum/hr)',1500.50,0.095,1
12, 'Tremix machine set with trowel & floater',700.69,0.15,1
13, 'Concrete mixers',120,0.15,1
14, 'D.G. Set – 82.KVA' ,12.50,0.15,1
15, 'Vibrators (Electrical)',200.99,0.001,1
16, 'Vibrators (Petrol)',4100.90,0.03,1
17, 'Stone cutting machine (Platform type)',1200.56,0.09,1
18, 'Stone cutting machine (hand type)' ,1780,0.0094,1
19, 'Groove cutting machine',122.50,0.5,1
20, 'Builder’sÂ Hoist with winch',122.50,0.5,1
21, 'Bar Bending & cutting machine',122.50,0.5,1
22, 'Truck' ,122.50,0.5,1
23, 'Air Compressor',122.50,0.5,1
24, 'Road Roller',122.50,0.5,1
25, 'Vibro-Roller',122.50,0.5,1
26, 'Tipper – Tata' ,122.50,0.5,1
27, 'Excavator – ACE' ,122.50,0.5,1
28, 'Tractor with trolly – 40 HP',122.50,0.5,1
29, 'Water pump',122.50,0.5,1
30, 'Cutter Hitachi – Model CM 45',122.50,0.5,1
31, 'Welding Set – Aircooled',122.50,0.5,1
32, 'Drilling Machine Bosch – GSB – 16' ,122.50,0.5,1
33, 'Mud pump – GEC – 1 HP 2 HP',122.50,0.5,1
34, 'Floor Grinding machine – 2 HP' ,122.50,0.5,1
35, 'Earth Compactor – 7.5 HP motor',122.50,0.5,1
36, 'CGI Sheets – 10′, 12′ Long' ,122.50,0.5,1

**Customer Information:** 
This contains relevant information about the customers 
includes the postal code and agreed payment days for every purchased equipment.
**--- Customer table------**
CustomerID int
CustomerName varchar(255)
Category varchar(255)
PrimaryContact varchar(255)
ReferenceNo varchar(255)
PaymentDays int
PostalCode int

**--- Customer Data -----**
1,'A Datum Corporation','Novelty Goods Supplier','Reio Kabin','AA20384',14,46077
2,'Woodgrove Bank','Financial Services Supplier','Hubert Helms','28034202',7,94101
3,'Consolidated Messenger','Courier','Kerstin Parn','209340283',30,94101
4,'Litware Inc.','Packaging Supplier','Elias Myllari','BC0280982',30,95245
5,'Humongous Insurance','Insurance Services Supplier','Madelaine Cartier','82420938',14,37770
6,'Graphic Design Institute','Novelty Goods Supplier','Penny Buck','8803922',14,64847
7,'Fabrikam Inc.','Clothing Supplier','Bill Lawson','293092',30,40351
8,'The Phone Company','Novelty Goods Supplier','Hai Dam','237408032',30,56732
9,'Trey Research','Marketing Services Supplier','Donald Jones','82304822',7,57543
10,'Lucerne Publishing','Novelty Goods Supplier','Prem Prabhu','JQ082304802',30,37659
11,'Contoso Ltd.','Novelty Goods Supplier','Hanna Mihhailov','B2084020',7,98253
12,'Nod Publishers','Novelty Goods Supplier','Marcos Costa','GL08029802',7,27906
13,'Northwind Electric Cars','Toy Supplier','Eliza Soderberg','ML0300202',30,7860
14,'A Datum Corporation','Novelty Goods Supplier','Reio Kabin','AA20384',14,46077
15,'Contoso Ltd.','Novelty Goods Supplier','Hanna Mihhailov','B2084020',7,98253
16,'Consolidated Messenger','Courier','Kerstin Parn','209340283',30,94101
17,'Fabrikam Inc.','Clothing Supplier','Bill Lawson','293092',30,40351
18,'Graphic Design Institute','Novelty Goods Supplier','Penny Buck','8803922',14,64847
19,'Humongous Insurance','Insurance Services Supplier','Madelaine Cartier','82420938',14,37770
20,'Litware Inc.','Packaging Supplier','Elias Myllari','BC0280982',30,95245
21,'Lucerne Publishing','Novelty Goods Supplier','Prem Prabhu','JQ082304802',30,37659
22,'Nod Publishers','Novelty Goods Supplier','Marcos Costa','GL08029802',7,27906
23,'Northwind Electric Cars','Toy Supplier','Eliza Soderberg','ML0300202',30,7860
24,'Trey Research','Marketing Services Supplier','Donald Jones','82304822',7,57543
25,'The Phone Company','Novelty Goods Supplier','Hai Dam','237408032',30,56732
26,'Woodgrove Bank','Financial Services Supplier','Hubert Helms','28034202',7,94101
27,'Consolidated Messenger','Courier Services Supplier','Kerstin Parn','209340283',30,94101

**Equipment Transaction: **

This contains the following table structure

**Equipment Transaction Table-----**-
TransID int
TransDate datetime
CustomerID int
EquipmentID int
Quantity float
GrossAmount decimal(12,2)
DiscountAmount decimal(12,2)
FloatRateAmount decimal(12,2)
FloatExceededAmount decimal(12,2)
PostalVariationAmount decimal(12,2)
 
**Business Rules**

TransID - Auto increment Identity primary key
TransDate - Denotes the date of the transaction
CustomerID – Derived from the Customer Table
EquipmentID – Derived from equipment table
Quantity - Auto generated amount
GrossAmount - (Unit price of the equipment) * Quantity
DiscountAmount - Discount amount on the equipment applies to quantities purchased, regardless of the number of quantity purchased
FloatRateAmount - Float rate applies to quantities purchased that fall between 100 and 150
FloatExceededAmount - Float exceeded rate applies to quantities more than 150
PostalVariationAmount – Derived based on customer postal code:
Postal Code 7000 to 50000 then variable rate 0.002
Postal Code 50001 to 70000 then variable rate 0.050
Postal Code 70001 to 90000 then variable rate 0.062
Postal Code 90001 above then variable rate 0.0078


**Business Requirements**

Create an E-R model for the conceptual, logical and physical on SQL Server
Populate Float Category, Equipment and Customer with the provided data
Generate 1M rows of equipment daily transactional data for 4 years start from January 1, 2015 to May 31, 2019 for testing S&M Software based on the business rules and set of the dataset defined above
Create a dynamic function that produces top N customer purchased Amount by year. For example, top 10 customers with highest purchase in 2019.
Implementation Details
This project contains the implementation of the above business rules and requirements using SQL Server Database and T-SQL.

**ER Diagram**
The ER diagram is created using draw.io 

**Data Generation**
The SQL script for generating 1M rows of equipment daily transactional data is available in the sql codes folder

**T-SQL Functions**
The T-SQL functions for calculating top N customer purchased Amount by year is available in the T-SQL Functions folder.

**Data Files**
The the sql codes used for populating the Float Category, Equipment and Customer tables are available in the sql codes folder.
