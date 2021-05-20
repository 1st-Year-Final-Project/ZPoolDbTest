Create Proc spDeleteMessagesByID @AppUserID int as
                                        BEGIN
                                        delete
                                        [Messages]
                                        From [Messages]
                                        where Messages.SenderId = @AppUserId
                                        OR
                                        Messages.ReceiverId = @AppUserID
                                        select * from Messages
                                        end
