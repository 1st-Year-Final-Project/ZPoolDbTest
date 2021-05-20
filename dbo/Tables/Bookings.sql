CREATE TABLE [dbo].[Bookings] (
    [BookingID]       INT            IDENTITY (1, 1) NOT NULL,
    [Date]            DATETIME2 (7)  NOT NULL,
    [PickUpLocation]  NVARCHAR (MAX) NOT NULL,
    [DropOffLocation] NVARCHAR (MAX) NOT NULL,
    [RideID]          INT            NOT NULL,
    [AppUserID]       INT            NOT NULL,
    [BookingStatus]   NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Bookings] PRIMARY KEY CLUSTERED ([BookingID] ASC),
    CONSTRAINT [FK_Bookings_AspNetUsers_AppUserID] FOREIGN KEY ([AppUserID]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_Bookings_Rides_RideID] FOREIGN KEY ([RideID]) REFERENCES [dbo].[Rides] ([RideID]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Bookings_AppUserID]
    ON [dbo].[Bookings]([AppUserID] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Bookings_RideID]
    ON [dbo].[Bookings]([RideID] ASC);

