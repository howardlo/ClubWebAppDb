CREATE TABLE [dbo].[membership_infomation] (
    [junk]                        INT           NOT NULL,
    [id]                          INT           NOT NULL,
    [first_name]                  NVARCHAR (50) NULL,
    [last_name]                   NVARCHAR (50) NULL,
    [telephone2]                  NVARCHAR (50) NULL,
    [email]                       NVARCHAR (50) NULL,
    [gender]                      NCHAR (10)    NULL,
    [birth_date]                  DATETIME2 (7) NULL,
    [emergency_contact_name]      NVARCHAR (50) NULL,
    [emergency_contact_telephone] NVARCHAR (50) NULL,
    [date_record_created]         DATETIME2 (7) NULL,
    [card_sent]                   NCHAR (10)    NULL,
    [user_id]                     INT           NULL,
    [password]                    NVARCHAR (50) NULL,
    CONSTRAINT [PK_membership_infomation] PRIMARY KEY CLUSTERED ([junk] ASC),
    CONSTRAINT [FK_membership_infomation_membership_master] FOREIGN KEY ([id]) REFERENCES [dbo].[membership_master] ([id])
);

