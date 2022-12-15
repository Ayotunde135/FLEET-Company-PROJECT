
	
					---------CREATE SCHEMA----


			CREATE SCHEMA K2A 


                     ------Create Dimensions------
	------	Populate  Float Category, Equipment and Customer with the provided data ----

-------Create Float table for OLtp------

			Create Table K2A.Float

						(
							FloatCategoryID int identity (1,1), 
							FloatRate float, 
							FloatExceedQty float,
							FloatExceedRate float
							Constraint K2A_Float_pk primary key (FloatCategoryID)
						)

					--------Insert Value Float-------
		insert into K2A.Float (FloatRate,FloatExceedQty,FloatExceedRate)
			
			Values		
						(0.4,15,0.7),
						(0.1,15,0.6),
						(0.2,50,0.75), 
						(0.24,68,0.9),
						(0.12,100,1.8)




				-------Create Equipment table for OLtp------

			Create Table K2A.equipment
							(
								EquipmentID int identity (1,1),
								EqupimentName Nvarchar (255),
								UnitPrice decimal (12,2),
								DiscountPercent float,
								FloatCategoryID int
								Constraint K2A_equipment_pk primary key (EquipmentID)
								Constraint  K2A_equipment_FloatCategoryID   foreign key (FloatCategoryID) references K2A.Float(FloatCategoryID)
							)

		
		                 --------Insert Value Equipment-------
		
			Insert into K2A.equipment (EqupimentName,UnitPrice,DiscountPercent,FloatCategoryID)

				Values
						('Cup -Lock System of Shuttering – 3.2 M high',122.50,0.015,1),
						('Steel Props – 4.2 M High',100,0.02,1),
						('Steel shuttering plates – 3 ft x 2 ft',1000.50,0.05,1),
						('Steel section Girders – 8ft to 12 ft' ,1700.00,0.01,1),
						('Steel pipes for scaffolding',15000.00,0.08,1),
						('Telescopic Girders',200,0.4,1),
						('Tower Crane',233,0.14,1),
						('Tractor mounted Crane',105,0.4,1),
						('Concrete batching plant',1325.70,0.015,1),
						('Mobile batching plant',99.87,0.011,1),
						('Concrete Pump (Greaves – 40 cum/hr)',1500.50,0.095,1),
						('Tremix machine set with trowel & floater',700.69,0.15,1),
						('Concrete mixers',120,0.15,1),
						('D.G. Set – 82.KVA' ,12.50,0.15,1),
						('Vibrators (Electrical)',200.99,0.001,1),
						('Vibrators (Petrol)',4100.90,0.03,1),
						('Stone cutting machine (Platform type)',1200.56,0.09,1),
						('Stone cutting machine (hand type)',1780,0.0094,1), 
						('Groove cutting machine',122.50,0.5,1),
						('Builder’sÂ Hoist with winch',122.50,0.5,1),
						('Bar Bending & cutting machine',122.50,0.5,1), 
						('Truck' ,122.50,0.5,1),
						('Air Compressor',122.50,0.5,1),
						('Road Roller',122.50,0.5,1),
						('Vibro-Roller',122.50,0.5,1),
						('Tipper – Tata' ,122.50,0.5,1),
						('Excavator – ACE'	,122.50,0.5,1),
						('Tractor with trolly – 40 HP',122.50,0.5,1) ,
						('Water pump',122.50,0.5,1),
						('Cutter Hitachi – Model CM 45',122.50,0.5,1),
						('Welding Set – Aircooled',122.50,0.5,1),
						('Drilling Machine Bosch – GSB – 16',122.50,0.5,1),
						('Mud pump – GEC – 1 HP 2 HP',122.50,0.5,1),
						('Floor Grinding machine – 2 HP',122.50,0.5,1),
						('Earth Compactor – 7.5 HP motor',122.50,0.5,1),
						('CGI Sheets – 10′, 12′ Long',122.50,0.5,1)





                -------Create Customer table for OLtp------

			Create Table K2A.Customer 
							(
								CustomerID int identity (1,1),
								CustomerName Nvarchar (255), 
								Category Nvarchar (255), 
								PrimaryContact Nvarchar (255), 
								ReferenceNo Nvarchar (255), 
								PaymentDays int,
								PostalCode int,
								Constraint K2A_Customer_pk primary key (CustomerID)
							)



							 --------Insert Value Customer-------
			Insert into K2A.Customer (CustomerName,Category,PrimaryContact,ReferenceNo, PaymentDays,PostalCode)

					Values

							('A Datum Corporation','Novelty Goods Supplier','Reio Kabin','AA20384',14,46077),
							('Woodgrove Bank','Financial Services Supplier','Hubert Helms','28034202',7,94101), 
							('Consolidated Messenger','Courier','Kerstin Parn','209340283',30,94101),
							('Litware Inc.','Packaging Supplier','Elias Myllari','BC0280982',30,95245),
							('Humongous Insurance','Insurance Services Supplier','Madelaine Cartier','82420938',14,37770),
							('Graphic Design Institute','Novelty Goods Supplier','Penny Buck','8803922',14,64847),
							('Fabrikam Inc.','Clothing Supplier','Bill Lawson','293092',30,40351),
							('The Phone Company','Novelty Goods Supplier','Hai Dam','237408032',30,56732), 
							('Trey Research','Marketing Services Supplier','Donald Jones','82304822',7,57543),
							('Lucerne Publishing','Novelty Goods Supplier','Prem Prabhu','JQ082304802',30,37659), 
							('Contoso Ltd.','Novelty Goods Supplier','Hanna Mihhailov','B2084020',7,98253),
							('Nod Publishers','Novelty Goods Supplier','Marcos Costa','GL08029802',7,27906), 
							('Northwind Electric Cars','Toy Supplier','Eliza Soderberg','ML0300202',30,7860),
							('A Datum Corporation','Novelty Goods Supplier','Reio Kabin','AA20384',14,46077),
							('Contoso Ltd.','Novelty Goods Supplier','Hanna Mihhailov','B2084020',7,98253), 
							('Consolidated Messenger','Courier','Kerstin Parn','209340283',30,94101),
							('Fabrikam Inc.','Clothing Supplier','Bill Lawson','293092',30,40351),
							('Graphic Design Institute','Novelty Goods Supplier','Penny Buck','8803922',14,64847),
							('Humongous Insurance','Insurance Services Supplier','Madelaine Cartier','82420938',14,37770), 
							('Litware Inc.','Packaging Supplier','Elias Myllari','BC0280982',30,95245),
							('Lucerne Publishing','Novelty Goods Supplier','Prem Prabhu','JQ082304802',30,37659), 
							('Nod Publishers','Novelty Goods Supplier','Marcos Costa','GL08029802',7,27906),
							('Northwind Electric Cars','Toy Supplier','Eliza Soderberg','ML0300202',30,7860), 
							('Trey Research','Marketing Services Supplier','Donald Jones','82304822',7,57543), 
							('The Phone Company','Novelty Goods Supplier','Hai Dam','237408032',30,56732), 
							('Woodgrove Bank','Financial Services Supplier','Hubert Helms','28034202',7,94101),
							('Consolidated Messenger','Courier Services Supplier','Kerstin Parn','209340283',30,94101)



-----------Generate 1M rows of equipment daily transactional data for 4 years start from January 1, 2015 to May 31, 2019 
-----------For testing S&M Software based on the business rules and set of the dataset defined above


Create Table ##K2a_fact_temp (
								TransID int identity (1,1),
								TransDate datetime,
								CustomerID int,
								EquipmentID int,
								Quantity float,)

  
  Create procedure  InsertData

		AS

			BEGIN 

						
				Set Nocount on 

				--------Declare Variables----------

									Declare @Transdate as Date;
									DECLARE @StartDateN AS date;
									DECLARE @EndDateN AS date;
									DECLARE @DaysBetween AS int;
									DECLARE @CountN int;
									Declare @count int;

									Declare @RandomCustomerID int
									Declare @RandomEquipmentID int
									Declare @RandomQuantity int

									Declare @LowerLimitForCustomerID int
									Declare @UpperLimitForCustomerID int

									Set @LowerLimitForCustomerID = 1
									Set @UpperLimitForCustomerID=  27


									Declare @LowerLimitForEquipmentID int
									Declare @UpperLimitForEquipmentID int

									Set @LowerLimitForEquipmentID = 1
									Set @UpperLimitForEquipmentID= 36 

									Declare @LowerLimitForQuantity int
									Declare @UpperLimitForQuantity int

									Set @LowerLimitForQuantity = 50
									Set @UpperLimitForQuantity = 300




			SELECT					@StartDateN   = '01/01/2015',
									@EndDateN     = '05/31/2019',
								    @DaysBetween = (1+DATEDIFF(DAY, @StartDateN, @EndDateN)),
									@CountN = 1;---------Loop Time
		
			SET						@count = 1;------------Loop Quantity


			BEGIN
						IF (select object_id ('tempdb..##K2a_fact_temp', 'u')) is NOT NULL   ------Control duplication---
									TRUNCATE TABLE ##K2a_fact_temp   



							While @count <= 1000000

							WHILE (@CountN <= 1000000)

			BEGIN
   
   
			 SELECT		@Transdate =  DATEADD(DAY, RAND(CHECKSUM(NEWID()))*@DaysBetween,@StartDateN) 
			 Select		@RandomCustomerID = Round(((@UpperLimitForCustomerID - @LowerLimitForCustomerID) * Rand()) + @LowerLimitForCustomerID, 0)
			 Select		@RandomEquipmentID= Round(((@UpperLimitForEquipmentID - @LowerLimitForEquipmentID) * Rand()) + @LowerLimitForEquipmentID, 0)
			 Select		@RandomQuantity = Round(((@UpperLimitForQuantity - @LowerLimitForQuantity) * Rand()) + @LowerLimitForQuantity, 0)


			Insert into ##K2a_fact_temp (TransDate, CustomerID, EquipmentID,Quantity)
			Select @Transdate as Transdate, @RandomCustomerID as CustomerID, @RandomEquipmentID AS EquipmentID, @RandomQuantity as Quantity


							   SET @CountN = @CountN + @@ROWCOUNT;
							   Set @count = @count + 1;
			 END
			 END
			 End


			Exec InsertData

			
			
				Create Table K2A.Fact_Equipment_Transaction

									(
										TransID int identity (1,1),
										TransDate datetime,
										CustomerID int,
										EquipmentID int,
										Quantity float,
										GrossAmount decimal(12,2),
										DiscountAmount decimal(12,2),
										FloatRateAmount decimal(12,2), 
										FloatExceededAmount decimal(12,2), 
										PostalVariationAmount decimal(12,2),
										Constraint K2A_TransID_pk primary key (TransID),
										Constraint  Fact_Equipment_Transaction_EquipmentID  foreign key (EquipmentID) references K2A.equipment (EquipmentID),
										Constraint  Fact_Equipment_Transaction_CustomerID  foreign key (CustomerID) references K2A.Customer (CustomerID)
											
									)

				
				Insert into K2A.Fact_Equipment_Transaction 
											(	
													TransDate, CustomerID, EquipmentID,Quantity, GrossAmount, 
													DiscountAmount,FloatRateAmount, FloatExceededAmount,
													PostalVariationAmount
													
											)
											
				Select								a.TransDate,a.customerid, A.equipmentid, a.quantity, 
													b.UnitPrice * a.quantity as GrossAmount, 
													b.DiscountPercent *a.quantity as DiscountAmount,

				CASE

									When 
												a.quantity between 100 and 150 then c.FloatRate*  a.quantity
												else 0 
												end  FloatRateAmount,

				CASE

									When 
												a.quantity > 150 then c.FloatExceedRate *  a.quantity
												else 0 
												end  FloatexceedAmount,

				CASE

									When 
												d.PostalCode between 7000 and 50000 then 0.002 *  a.quantity
									When
												d.PostalCode between 50001 and 70000 then 0.050 *  a.quantity
									When
												d.PostalCode between 70001 and 90000 then 0.062 *  a.quantity
									When	
												d.PostalCode > 90000 then 0.078 *  a.quantity

												else 0 
												
												end PostalVariationAmount


				From							##K2a_fact_temp A

												Inner join [K2A].[equipment] B on A.equipmentid = B.equipmentid

												Inner Join [K2A].[Float] C on B.FloatCategoryID = c.FloatCategoryID

												Inner Join [K2A].[Customer] D on d.CustomerID = A.Customerid
											 
											


---------Create a dynamic function that produce top N customer purchased Amount by year----------
---------E.g. Top 10 customers with highest purchased in 2019 Select * from TopCustomer (2019, 10)----------

									
		Create FUNCTION K2A.Top10Customerlist
								(
									@Trans_year Int = Transyear,
									@Nth_value Int = Position
								) 
		RETURNS @ResultTable TABLE
								( 
								 EqupimentName Nvarchar (255), Transyear Int, GrossAmount int,Position int
								) 
				AS BEGIN
        
 
					With Topcustomer as 
		
									(
										Select EqupimentName, Transyear, GrossAmount,Position
						
					FROM 
								(Select B.EqupimentName,Datepart(Year,Transdate) as Transyear,GrossAmount,
								Dense_RANK () OVER (Partition by Datepart(Year,Transdate) order by GrossAmount desc) as Position
								fROM K2A.Fact_Equipment_Transaction A
								INNER JOIN K2A.equipment B ON A.EquipmentID = B.EquipmentID) c)
        
								INSERT INTO @ResultTable 
								Select Top 10* from Topcustomer 
								Where @Trans_year= Transyear and Position <= @Nth_value			 
                
				RETURN
				END

-------------Dataset and summary data are needed for testing S&M Software---------

SELECT
    Year(TransDate) TransYear,
    EqupimentName, 
    SUM (GrossAmount) as Total

FROM
    K2A.Fact_Equipment_Transaction A
	inner join K2A.Equipment B ON B.EquipmentID = A.EquipmentID
		
GROUP BY
    EqupimentName,
Year(TransDate)
	



select * from [K2A].[Float]
select * from [K2A].[Customer]
select * from K2A.Equipment 
select * from K2A.Fact_Equipment_Transaction
Select * from K2A.Top10Customerlist (2017,10)	

select * from [Shaw Staging].shawdb.Accountstatus