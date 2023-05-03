-- Creating a heap table

-- A heap table is a type of table in a database where the data is not stored in any particular order.
--In other words, the table does not have a clustered index, which defines the physical order of the data in the table. 
--Instead, the data is stored in the order in which it was inserted into the table.
--This means that when you query a heap table, SQL Server has to search through the entire table to find the data that matches your query, which can be slower than querying a table with a clustered index.
--Heap tables are commonly used as temporary staging tables for data that needs to be transformed before being loaded into a final table.

CREATE TABLE [dbo].[SalesFact_staging](
	[ProductID] [int] NOT NULL,
	[SalesOrderID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[OrderQty] [smallint] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[OrderDate] [datetime] NULL,
	[TaxAmt] [money] NULL
)
WITH(HEAP,
DISTRIBUTION = ROUND_ROBIN
)

CREATE INDEX ProductIDIndex ON [dbo].[SalesFact_staging] (ProductID)
