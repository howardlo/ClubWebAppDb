CREATE TABLE [dbo].[email] (
    [id]             INT            IDENTITY (1000, 1) NOT NULL,
    [status]         NVARCHAR (50)  NULL,
    [subject]        NVARCHAR (500) NULL,
    [from_addr]      NVARCHAR (500) NULL,
    [to_addr]        NVARCHAR (MAX) NULL,
    [cc_addr]        NVARCHAR (MAX) NULL,
    [bcc_addr]       NVARCHAR (MAX) NULL,
    [last_attempted] DATETIME2 (7)  NULL,
    [last_confirmed] DATETIME2 (7)  NULL,
    [body]           NVARCHAR (MAX) NULL,
    [isHtml]         BIT            NULL,
    [ntries]         INT            CONSTRAINT [DF_email_ntries] DEFAULT ((0)) NOT NULL,
    [create_dt]      DATETIME2 (7)  CONSTRAINT [DF_email_create_date] DEFAULT (getutcdate()) NOT NULL,
    CONSTRAINT [PK_email] PRIMARY KEY CLUSTERED ([id] ASC)
);

