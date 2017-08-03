CREATE TABLE [dbo].[membership_directory] (
    [id]                     INT           NOT NULL,
    [last_name]              NVARCHAR (50) NULL,
    [first_name]             NVARCHAR (50) NULL,
    [street1]                NVARCHAR (50) NULL,
    [street2]                NVARCHAR (50) NULL,
    [city]                   NVARCHAR (50) NULL,
    [zip]                    VARCHAR (50)  NULL,
    [state]                  NVARCHAR (50) NULL,
    [telephone1]             VARCHAR (50)  NULL,
    [telephone2]             VARCHAR (50)  NULL,
    [email]                  NVARCHAR (50) NULL,
    [share_address_internal] VARCHAR (10)  NULL,
    [share_phone_internal]   VARCHAR (10)  NULL,
    [share_email_internal]   VARCHAR (10)  NULL,
    CONSTRAINT [PK_membership_directory] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_membership_directory_membership_master] FOREIGN KEY ([id]) REFERENCES [dbo].[membership_master] ([id])
);

