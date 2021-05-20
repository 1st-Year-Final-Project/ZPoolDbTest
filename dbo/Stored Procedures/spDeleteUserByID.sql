
            CREATE Proc[dbo].[spDeleteUserByID]
            @AppUserID int
                as
                BEGIN

            delete
                [Bookings]

            From[Bookings]

            inner join[dbo].[AspNetUsers] on[AspNetUsers].Id = Bookings.AppUserID

            where Bookings.AppUserID = @AppUserID

            delete Rides

            from Rides
            inner join cars on rides.CarID = Cars.CarID

            where cars.AppUserID = @AppUserID

            delete from[Cars] where Cars.AppUserID = @AppUserID
            Delete from[dbo].[Messages] where[SenderId] = @AppUserID or[ReceiverId] = @AppUserID

            Delete from[AspNetUsers] where id = @AppUserID

            select* from[AspNetUsers]
            end
