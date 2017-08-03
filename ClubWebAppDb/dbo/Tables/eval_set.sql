CREATE TABLE [dbo].[eval_set] (
    [id]           INT              IDENTITY (1000, 1) NOT NULL,
    [type]         INT              NOT NULL,
    [guid]         UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [interval]     INT              NULL,
    [event_id]     INT              NULL,
    [sequence]     INT              NULL,
    [guest_id]     INT              NULL,
    [member_id]    INT              NULL,
    [eval_version] VARCHAR (50)     NULL,
    [eval_def_id]  INT              NULL,
    [lupdate_dt]   DATETIME2 (0)    NULL,
    [create_dt]    DATETIME2 (0)    DEFAULT (getutcdate()) NOT NULL,
    [response_dt]  DATETIME2 (0)    NULL,
    [sent_dt]      DATETIME2 (0)    NULL,
    [done]         BIT              DEFAULT ((0)) NOT NULL,
    CONSTRAINT [SYS_C008633] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_eval_set_guest] FOREIGN KEY ([guest_id]) REFERENCES [dbo].[guest] ([id]),
    CONSTRAINT [FK_eval_set_membership_master] FOREIGN KEY ([member_id]) REFERENCES [dbo].[membership_master] ([id]),
    CONSTRAINT [FK_eval_set_ride_schedule] FOREIGN KEY ([event_id]) REFERENCES [dbo].[ride_schedule] ([id])
);

