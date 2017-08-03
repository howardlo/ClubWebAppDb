CREATE TABLE [dbo].[vsession_hist] (
    [id]          INT            IDENTITY (1000, 1) NOT NULL,
    [create_date] DATETIME2 (7)  NOT NULL,
    [url]         NVARCHAR (250) NOT NULL,
    [vsession_id] INT            NOT NULL,
    CONSTRAINT [PK_vsession_hist] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_vsession_hist_vsession] FOREIGN KEY ([vsession_id]) REFERENCES [dbo].[vsession] ([id])
);

