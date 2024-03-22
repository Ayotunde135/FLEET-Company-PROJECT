# K2A Fleets and Machineries Inc. S&M Software README

## Background

K2A Fleets and Machineries Inc. has experienced substantial growth in equipment sales, prompting expansion into global markets. To efficiently manage this growth, K2A identified the need for a robust Sales and Marketing (S&M) Software solution. Protecting sensitive transactional data and operational strategies has been a top priority for K2A, ensuring its competitive edge in the fleets industry.

## Data Information

The S&M Software relies on a structured dataset comprising four key tables: Float Category, Equipment, Customer, and Equipment Transaction. Each table is meticulously designed to maintain data integrity and accurately represent K2A's operational environment.

### Float Category Table
- FloatCategoryID (int)
- FloatRate (float)
- FloatExceedQty (float)
- FloatExceedRate (float)

### Equipment Table
- EquipmentID (int)
- EquipmentName (varchar(255))
- UnitPrice (decimal(12,2))
- DiscountPercent (float)
- FloatCategoryID (int)

### Customer Table
- CustomerID (int)
- CustomerName (varchar(255))
- Category (varchar(255))
- PrimaryContact (varchar(255))
- ReferenceNo (varchar(255))
- PaymentDays (int)
- PostalCode (int)

### Equipment Transaction Table
- TransID (int)
- TransDate (datetime)
- CustomerID (int)
- EquipmentID (int)
- Quantity (float)
- GrossAmount (decimal(12,2))
- DiscountAmount (decimal(12,2))
- FloatRateAmount (decimal(12,2))
- FloatExceededAmount (decimal(12,2))
- PostalVariationAmount (decimal(12,2))

## Business Rules

(See provided business rules)

## Business Requirements

1. Develop an E-R model for the conceptual, logical, and physical structures on SQL Server.
2. Populate the Float Category, Equipment, and Customer tables with provided data.
3. Generate 1M rows of daily equipment transactional data spanning four years (January 1, 2015, to May 31, 2019) for S&M Software testing.
4. Implement a dynamic function to calculate top N customer purchase amounts by year.

## Implementation Details

This project involves the implementation of business rules and requirements using SQL Server Database and T-SQL.

### ER Diagram

The ER diagram has been created using draw.io.

### Data Generation

SQL scripts for generating 1M rows of equipment daily transactional data are available in the sql codes folder.

### T-SQL Functions

T-SQL functions for calculating top N customer purchase amounts by year are available in the T-SQL Functions folder.

### Data Files

SQL codes for populating the Float Category, Equipment, and Customer tables are available in the sql codes folder.
