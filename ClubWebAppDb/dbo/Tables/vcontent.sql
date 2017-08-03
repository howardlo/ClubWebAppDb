CREATE TABLE [dbo].[vcontent] (
    [id]            INT              IDENTITY (1000, 1) NOT NULL,
    [status]        VARCHAR (25)     NULL,
    [type]          NVARCHAR (50)    NULL,
    [name]          NVARCHAR (500)   NULL,
    [image]         IMAGE            NULL,
    [event_id]      INT              NULL,
    [caption]       NVARCHAR (250)   NULL,
    [xml]           XML              NULL,
    [is_cue_sheet]  BIT              CONSTRAINT [DF_vcontent_is_cue_sheet] DEFAULT ((0)) NOT NULL,
    [is_newsletter] BIT              DEFAULT ((0)) NOT NULL,
    [create_date]   DATETIME2 (0)    DEFAULT (getutcdate()) NOT NULL,
    [guid]          UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [eval_set_id]   INT              NULL,
    [is_gallery]    BIT              CONSTRAINT [DF_vcontent_is_gallery] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_vcontent] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_vcontent_eval_set] FOREIGN KEY ([eval_set_id]) REFERENCES [dbo].[eval_set] ([id]),
    CONSTRAINT [FK_vcontent_ride_schedule] FOREIGN KEY ([event_id]) REFERENCES [dbo].[ride_schedule] ([id])
);

