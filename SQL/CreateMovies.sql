/****** Object:  Table [dbo].[MovieSummaries]    Script Date: 4/22/2019 5:06:15 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MovieSummaries](
	[MovieId] [uniqueidentifier] NOT NULL,
	[OriginalMovieId] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Subtitle] [nvarchar](50) NULL,
	[Summary] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_MovieSummaries] PRIMARY KEY CLUSTERED 
(
	[MovieId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[MovieSummaries] ADD  CONSTRAINT [DF_MovieSummaries_MovieId]  DEFAULT (newid()) FOR [MovieId]
GO


