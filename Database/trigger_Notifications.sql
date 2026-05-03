USE HOME_SHARING_PLATFORM;
GO

CREATE OR ALTER TRIGGER dbo.trg_UpdateNotificationDate
ON dbo.Notifications
AFTER INSERT
AS
BEGIN
    -- Set the notification date/time for the new inserted notification(s)
    UPDATE Notifications
    SET Notif_Date = GETDATE()
    WHERE Notification_ID IN (SELECT Notification_ID FROM inserted)
      AND Notif_Date IS NULL;
END;
GO
