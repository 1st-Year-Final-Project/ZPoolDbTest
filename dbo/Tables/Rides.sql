CREATE TABLE [dbo].[Rides] (
    [RideID]              INT            IDENTITY (1, 1) NOT NULL,
    [StartTime]           DATETIME2 (7)  NOT NULL,
    [DepartureLocation]   NVARCHAR (MAX) NULL,
    [DestinationLocation] NVARCHAR (MAX) NULL,
    [SeatsAvailable]      INT            NOT NULL,
    [CarID]               INT            NOT NULL,
    CONSTRAINT [PK_Rides] PRIMARY KEY CLUSTERED ([RideID] ASC),
    CONSTRAINT [FK_Rides_Cars_CarID] FOREIGN KEY ([CarID]) REFERENCES [dbo].[Cars] ([CarID])
);


GO
CREATE NONCLUSTERED INDEX [IX_Rides_CarID]
    ON [dbo].[Rides]([CarID] ASC);

