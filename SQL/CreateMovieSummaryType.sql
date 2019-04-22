/****** Object:  UserDefinedTableType [dbo].[MovieSummaryType]    Script Date: 4/22/2019 5:14:24 PM ******/
CREATE TYPE [dbo].[MovieSummaryType] AS TABLE(
	[OriginalMovieId] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Subtitle] [nvarchar](50) NULL,
	[Summary] [nvarchar](150) NOT NULL
)
GO


