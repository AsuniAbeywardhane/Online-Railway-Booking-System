CREATE TABLE [dbo].[Table]
(
	[TrainNo] INT NOT NULL PRIMARY KEY, 
    [From] NVARCHAR(50) NULL, 
    [To] NVARCHAR(50) NULL, 
    [Time] TIME NULL, 
    [Class] INT NULL, 
    [Price] MONEY NULL
)
