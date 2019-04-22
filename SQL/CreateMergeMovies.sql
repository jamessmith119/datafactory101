/****** Object:  StoredProcedure [dbo].[MergeMovies]    Script Date: 4/22/2019 5:13:57 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[MergeMovies] @Summaries [dbo].[MovieSummaryType] READONLY
AS
BEGIN
  MERGE MovieSummaries AS targetSummaries
  USING @Summaries AS source
  ON (targetSummaries.OriginalMovieId = source.OriginalMovieId)
  WHEN MATCHED THEN
      UPDATE SET Title = source.Title, Subtitle = source.Subtitle, Summary = source.Summary
  WHEN NOT MATCHED THEN
      INSERT (OriginalMovieId, Title, Subtitle, Summary)
      VALUES (source.OriginalMovieId, source.Title, source.Subtitle, source.Summary);
END
GO


