CREATE TABLE [dbo].[eval] (
    [id]          INT              IDENTITY (1000, 1) NOT NULL,
    [status]      INT              NULL,
    [sub_id]      INT              NULL,
    [eval_set_id] INT              NOT NULL,
    [eval_def_id] INT              NOT NULL,
    [type]        VARCHAR (50)     NOT NULL,
    [category]    NVARCHAR (255)   NULL,
    [label]       NVARCHAR (500)   NOT NULL,
    [ivalue]      INT              NULL,
    [tvalue]      NVARCHAR (MAX)   NULL,
    [bvalue]      BIT              NULL,
    [sequence]    INT              CONSTRAINT [DF_eval_seq] DEFAULT ((0)) NULL,
    [lupdate_dt]  DATETIME2 (0)    NULL,
    [create_dt]   DATETIME2 (0)    CONSTRAINT [DF__eval__create_dt__13BCEBC1] DEFAULT (getutcdate()) NOT NULL,
    [guid]        UNIQUEIDENTIFIER CONSTRAINT [DF__eval__guid__0A338187] DEFAULT (newid()) NOT NULL,
    CONSTRAINT [SYS_C008629] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_eval_eval_set] FOREIGN KEY ([eval_set_id]) REFERENCES [dbo].[eval_set] ([id])
);


GO
CREATE NONCLUSTERED INDEX [IX_eval_eval_set]
    ON [dbo].[eval]([eval_set_id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_eval_id]
    ON [dbo].[eval]([id] ASC);

