CREATE TABLE [dbo].[Messages] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [IsRead]      BIT            NOT NULL,
    [MessageBody] NVARCHAR (240) NOT NULL,
    [SendingDate] DATETIME2 (7)  NOT NULL,
    [SenderId]    INT            NOT NULL,
    [ReceiverId]  INT            NOT NULL,
    CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Messages_AspNetUsers_ReceiverId] FOREIGN KEY ([ReceiverId]) REFERENCES [dbo].[AspNetUsers] ([Id]),
    CONSTRAINT [FK_Messages_AspNetUsers_SenderId] FOREIGN KEY ([SenderId]) REFERENCES [dbo].[AspNetUsers] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Messages_ReceiverId]
    ON [dbo].[Messages]([ReceiverId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Messages_SenderId]
    ON [dbo].[Messages]([SenderId] ASC);

