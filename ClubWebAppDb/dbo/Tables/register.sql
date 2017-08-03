CREATE TABLE [dbo].[register] (
    [id]               INT           IDENTITY (3741, 1) NOT NULL,
    [status]           NVARCHAR (25) NULL,
    [membership_id]    INT           NULL,
    [member_type_code] INT           NULL,
    [amount_paid]      MONEY         NULL,
    [date_paid]        DATETIME2 (7) NULL,
    [membership_year]  INT           CONSTRAINT [DF_register_membership_year] DEFAULT ((0)) NOT NULL,
    [card_sent]        BIT           CONSTRAINT [DF_register_card_sent] DEFAULT ((0)) NOT NULL,
    [paypal_txn_id]    NVARCHAR (50) NULL,
    [lupdate]          DATETIME2 (7) NULL,
    [ntries]           INT           CONSTRAINT [DF_register_ntries] DEFAULT ((0)) NOT NULL,
    [type]             NVARCHAR (50) NULL,
    [create_date]      DATETIME2 (7) NULL,
    [verified]         BIT           NULL,
    [expire_date]      DATETIME2 (7) NULL,
    [quantity]         FLOAT (53)    NULL,
    [product_id]       INT           NULL,
    CONSTRAINT [PK_register] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_register_membership_master] FOREIGN KEY ([membership_id]) REFERENCES [dbo].[membership_master] ([id]),
    CONSTRAINT [FK_register_product] FOREIGN KEY ([product_id]) REFERENCES [dbo].[product] ([id])
);

