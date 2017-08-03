CREATE TABLE [dbo].[journal] (
    [id]          INT            IDENTITY (1000, 1) NOT NULL,
    [owner_id]    INT            NULL,
    [body]        NVARCHAR (MAX) NULL,
    [lupdate]     DATETIME2 (7)  NULL,
    [event_id]    INT            NULL,
    [register_id] INT            NULL,
    [create_dt]   DATETIME2 (7)  CONSTRAINT [DF_journal_create_dt] DEFAULT (getutcdate()) NOT NULL,
    [xml]         XML            NULL,
    [eval_set_id] INT            NULL,
    CONSTRAINT [PK_journal] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_journal_eval_set] FOREIGN KEY ([eval_set_id]) REFERENCES [dbo].[eval_set] ([id]),
    CONSTRAINT [FK_journal_membership_master] FOREIGN KEY ([owner_id]) REFERENCES [dbo].[membership_master] ([id]),
    CONSTRAINT [FK_journal_register] FOREIGN KEY ([register_id]) REFERENCES [dbo].[register] ([id]),
    CONSTRAINT [FK_journal_ride_schedule] FOREIGN KEY ([event_id]) REFERENCES [dbo].[ride_schedule] ([id])
);

