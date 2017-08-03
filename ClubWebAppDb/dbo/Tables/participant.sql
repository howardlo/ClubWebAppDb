CREATE TABLE [dbo].[participant] (
    [id]        INT              IDENTITY (1000, 1) NOT NULL,
    [status]    INT              NULL,
    [member_id] INT              NULL,
    [guest_id]  INT              NULL,
    [event_id]  INT              NULL,
    [create_dt] DATETIME2 (7)    CONSTRAINT [DF_participant_create_dt] DEFAULT (getutcdate()) NOT NULL,
    [guid]      UNIQUEIDENTIFIER CONSTRAINT [DF_participant_guid] DEFAULT (newid()) NOT NULL,
    CONSTRAINT [PK_participant] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_participant_guest] FOREIGN KEY ([guest_id]) REFERENCES [dbo].[guest] ([id]),
    CONSTRAINT [FK_participant_membership_master] FOREIGN KEY ([member_id]) REFERENCES [dbo].[membership_master] ([id]),
    CONSTRAINT [FK_participant_ride_schedule] FOREIGN KEY ([event_id]) REFERENCES [dbo].[ride_schedule] ([id])
);

