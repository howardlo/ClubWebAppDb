CREATE TABLE [dbo].[vsystem] (
    [id]       INT            IDENTITY (1000, 1) NOT NULL,
    [xkey]     VARCHAR (50)   NULL,
    [value]    NVARCHAR (MAX) NULL,
    [lupdate]  DATETIME2 (7)  NULL,
    [user_id]  INT            NULL,
    [dt_value] DATETIME2 (7)  NULL,
    CONSTRAINT [PK_system] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_vsystem_membership_master1] FOREIGN KEY ([user_id]) REFERENCES [dbo].[membership_master] ([id])
);


GO
CREATE NONCLUSTERED INDEX [IX_vsystem]
    ON [dbo].[vsystem]([xkey] ASC);

