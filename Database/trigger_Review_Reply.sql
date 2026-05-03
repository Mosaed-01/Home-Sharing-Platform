USE HOME_SHARING_PLATFORM;
GO

CREATE OR ALTER TRIGGER dbo.trg_UpdateReplyDate
ON dbo.Review_Reply
AFTER INSERT
AS
BEGIN
    UPDATE Review_Reply
    SET Reply_Date = GETDATE()
    WHERE Review_ID IN (SELECT Review_ID FROM inserted)
      AND Reply_Date IS NULL;
END;
GO
