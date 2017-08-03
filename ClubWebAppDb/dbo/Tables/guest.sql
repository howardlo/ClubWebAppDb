CREATE TABLE [dbo].[guest] (
    [id]                          INT              IDENTITY (1000, 1) NOT NULL,
    [status]                      INT              NULL,
    [email]                       NVARCHAR (200)   NULL,
    [first_name]                  NVARCHAR (50)    NULL,
    [last_name]                   NVARCHAR (50)    NULL,
    [create_dt]                   DATETIME2 (7)    CONSTRAINT [DF_guest_create_dt] DEFAULT (getutcdate()) NOT NULL,
    [emergency_contact_name]      NVARCHAR (50)    NULL,
    [emergency_contact_telephone] NVARCHAR (50)    NULL,
    [mobile]                      NVARCHAR (50)    NULL,
    [guid]                        UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    CONSTRAINT [PK_guest] PRIMARY KEY CLUSTERED ([id] ASC)
);

