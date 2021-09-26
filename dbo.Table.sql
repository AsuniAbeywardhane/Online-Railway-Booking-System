CREATE TABLE [dbo].[Timetable]
(
	[From] NVARCHAR(50) NOT NULL  IDENTITY, 
    [To] NVARCHAR(50) NOT NULL, 
    [Time] DATETIME2 NOT NULL, 
    [Train no] NVARCHAR(50) NOT NULL, 
    [Price] MONEY NULL, 
    [Class] INT NULL, 
    CONSTRAINT [PK_Timetable] PRIMARY KEY ([Train no]) 
)
