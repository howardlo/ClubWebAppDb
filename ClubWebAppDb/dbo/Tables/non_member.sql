CREATE TABLE [dbo].[non_member] (
    [id]             INT            IDENTITY (1, 1) NOT NULL,
    [first_name]     NVARCHAR (50)  NULL,
    [last_name]      NVARCHAR (50)  NULL,
    [business_name]  NVARCHAR (50)  NULL,
    [business_name2] NVARCHAR (50)  NULL,
    [street1]        NVARCHAR (50)  NULL,
    [street2]        NVARCHAR (50)  NULL,
    [city]           NVARCHAR (50)  NULL,
    [state]          NVARCHAR (50)  NULL,
    [zip]            NVARCHAR (50)  NULL,
    [telephone1]     NVARCHAR (50)  NULL,
    [email]          NVARCHAR (50)  NULL,
    [comments]       NVARCHAR (MAX) NULL,
    [mailing_list]   NVARCHAR (50)  NULL,
    CONSTRAINT [PK_non_member] PRIMARY KEY CLUSTERED ([id] ASC)
);

