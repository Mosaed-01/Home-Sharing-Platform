USE HOME_SHARING_PLATFORM;
GO

CREATE OR ALTER TRIGGER dbo.trg_UpdateReviewDate
ON dbo.Reviews
AFTER INSERT
AS
BEGIN
    UPDATE Reviews
    SET Review_Date = GETDATE()
    WHERE Review_ID IN (SELECT Review_ID FROM inserted)
      AND Review_Date IS NULL;
END;
GO
