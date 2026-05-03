USE HOME_SHARING_PLATFORM;
GO

CREATE OR ALTER TRIGGER dbo.trg_UpdateMessageDate
ON dbo.Messages
AFTER INSERT
AS
BEGIN
    UPDATE Messages
    SET Sent_At = GETDATE()
    WHERE Message_ID IN (SELECT Message_ID FROM inserted)
      AND Sent_At IS NULL;
END;
GO
