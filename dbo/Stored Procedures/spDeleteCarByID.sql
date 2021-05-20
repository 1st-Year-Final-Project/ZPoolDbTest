Create Proc spDeleteCarByID @CarID int as
                                        BEGIN
                                        delete
                                        [Bookings]
                                        From [Bookings]
                                        inner join Rides on Rides.RideId = [Bookings].RideID
                                        where rides.CarID = @CarID
                                        delete from Rides where CarID = @CarID
                                        delete from [Cars] where CarID = @CarID
                                        select * from Cars
                                        end
