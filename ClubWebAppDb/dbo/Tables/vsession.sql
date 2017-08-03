CREATE TABLE [dbo].[vsession] (
    [id]          INT             IDENTITY (1000, 1) NOT NULL,
    [lupdate]     DATETIME2 (7)   NULL,
    [user_id]     INT             NULL,
    [session_key] NVARCHAR (50)   NULL,
    [user_agent]  NVARCHAR (2000) NULL,
    CONSTRAINT [PK_vsession] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_vsession_membership_master] FOREIGN KEY ([user_id]) REFERENCES [dbo].[membership_master] ([id])
);

