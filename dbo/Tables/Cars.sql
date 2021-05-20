CREATE TABLE [dbo].[Cars] (
    [CarID]         INT            IDENTITY (1, 1) NOT NULL,
    [NumberOfSeats] INT            NOT NULL,
    [AppUserID]     INT            NOT NULL,
    [Brand]         NVARCHAR (MAX) NOT NULL,
    [Color]         NVARCHAR (MAX) NULL,
    [Model]         NVARCHAR (MAX) NOT NULL,
    [NumberPlate]   NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Cars] PRIMARY KEY CLUSTERED ([CarID] ASC),
    CONSTRAINT [FK_Cars_AspNetUsers_AppUserID] FOREIGN KEY ([AppUserID]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Cars_AppUserID]
    ON [dbo].[Cars]([AppUserID] ASC);

