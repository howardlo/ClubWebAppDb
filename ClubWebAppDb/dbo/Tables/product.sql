CREATE TABLE [dbo].[product] (
    [id]               INT            NOT NULL,
    [name]             NVARCHAR (200) NULL,
    [status]           VARCHAR (50)   NULL,
    [sequence]         INT            NULL,
    [description]      NVARCHAR (MAX) NULL,
    [price]            DECIMAL (18)   NULL,
    [type]             INT            NULL,
    [member_type_code] INT            NULL,
    CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED ([id] ASC)
);

