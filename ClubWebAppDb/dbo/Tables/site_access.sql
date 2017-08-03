CREATE TABLE [dbo].[site_access] (
    [id]            INT           NOT NULL,
    [user_id]       VARCHAR (50)  NULL,
    [password]      NVARCHAR (50) NULL,
    [last_access]   DATETIME2 (7) NULL,
    [access_level]  INT           NULL,
    [total_logins]  INT           CONSTRAINT [DF_site_access_total_logins] DEFAULT ((0)) NOT NULL,
    [temp_password] BIT           DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_site_access] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_site_access_membership_master] FOREIGN KEY ([id]) REFERENCES [dbo].[membership_master] ([id])
);

