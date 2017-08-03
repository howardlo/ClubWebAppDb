CREATE TABLE [dbo].[ride_schedule] (
    [id]                   INT              IDENTITY (1747, 1) NOT NULL,
    [status]               VARCHAR (50)     NULL,
    [start_date]           DATETIME2 (7)    NULL,
    [start_time]           DATETIME2 (7)    NULL,
    [title]                NVARCHAR (250)   NULL,
    [ride_type]            NVARCHAR (50)    NULL,
    [lead]                 NVARCHAR (50)    NULL,
    [pace_low]             INT              NULL,
    [pace_high]            INT              NULL,
    [distance]             INT              NULL,
    [contact_phone]        NVARCHAR (50)    NULL,
    [contact_email]        NVARCHAR (50)    NULL,
    [description]          NVARCHAR (MAX)   NULL,
    [remote_start]         NVARCHAR (250)   NULL,
    [image]                NVARCHAR (MAX)   NULL,
    [final]                NVARCHAR (50)    NULL,
    [best_of]              NVARCHAR (50)    NULL,
    [bike_chicago]         NVARCHAR (50)    NULL,
    [no_public_email]      NVARCHAR (50)    NULL,
    [comments]             NVARCHAR (MAX)   NULL,
    [lupdate]              DATETIME2 (7)    NULL,
    [leader_id]            INT              NULL,
    [image_caption]        NVARCHAR (50)    NULL,
    [distance_description] NVARCHAR (200)   NULL,
    [rsvp_process]         BIT              CONSTRAINT [DF_ride_schedule_rsvp_process] DEFAULT ((0)) NOT NULL,
    [facebook_pub]         BIT              CONSTRAINT [DF_ride_schedule_facebook_pub] DEFAULT ((0)) NOT NULL,
    [twitter_pub]          BIT              CONSTRAINT [DF_ride_schedule_twitter_pub] DEFAULT ((0)) NOT NULL,
    [end_time]             DATETIME2 (7)    NULL,
    [full_description]     NVARCHAR (MAX)   NULL,
    [create_dt]            DATETIME2 (7)    CONSTRAINT [DF_ride_schedule_create_dt] DEFAULT (getutcdate()) NOT NULL,
    [tzi]                  NVARCHAR (50)    CONSTRAINT [DF_ride_schedule_tzi] DEFAULT ('UTC') NOT NULL,
    [guid]                 UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    CONSTRAINT [PK_ride_schedule] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_ride_schedule_membership_master] FOREIGN KEY ([leader_id]) REFERENCES [dbo].[membership_master] ([id])
);


GO
CREATE NONCLUSTERED INDEX [ride_sched_index]
    ON [dbo].[ride_schedule]([start_date] ASC, [status] ASC);

