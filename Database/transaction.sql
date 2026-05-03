USE HOME_SHARING_PLATFORM;
GO

CREATE OR ALTER PROCEDURE sp_CreateBookingWithPayment
(
    @UserID      INT,
    @PropertyID  INT,
    @CheckIn     DATE,
    @CheckOut    DATE,
    @Method      VARCHAR(30),
    @retVal      INT OUT
)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @PricePerDay DECIMAL(10,2);
    DECLARE @Days INT;
    DECLARE @Total DECIMAL(10,2);
    DECLARE @BookingID INT;

    IF (@CheckOut <= @CheckIn)
    BEGIN
        SET @retVal = -2;
        RAISERROR('CheckOut must be after CheckIn.', 16, 1);
        RETURN;
    END

    SELECT @PricePerDay = Price_Per_Day
    FROM Properties
    WHERE Property_ID = @PropertyID;

    IF @PricePerDay IS NULL
    BEGIN
        SET @retVal = -3;
        RAISERROR('Property not found.', 16, 1);
        RETURN;
    END

    IF EXISTS (
        SELECT 1
        FROM Property_Availability a
        WHERE a.Property_ID = @PropertyID
          AND a.Unavailable_Date >= @CheckIn
          AND a.Unavailable_Date <  @CheckOut
    )
    BEGIN
        SET @retVal = -4;
        RAISERROR('Property has unavailable dates in this period.', 16, 1);
        RETURN;
    END

    IF EXISTS (
        SELECT 1
        FROM Bookings b
        WHERE b.Property_ID = @PropertyID
          AND b.Status <> 'Cancelled'
          AND b.Check_In  < @CheckOut
          AND b.Check_Out > @CheckIn
    )
    BEGIN
        SET @retVal = -5;
        RAISERROR('Property is already booked in this period.', 16, 1);
        RETURN;
    END

    SET @Days = DATEDIFF(DAY, @CheckIn, @CheckOut);
    SET @Total = @Days * @PricePerDay;

    BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO Bookings(User_ID, Property_ID, Check_In, Check_Out, Total_Price, Status)
        VALUES (@UserID, @PropertyID, @CheckIn, @CheckOut, @Total, 'Confirmed');

        SET @BookingID = SCOPE_IDENTITY();

        INSERT INTO Payments(Booking_ID, Amount, Method)
        VALUES (@BookingID, @Total, @Method);

        COMMIT TRANSACTION;

        SET @retVal = 1; 
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        SET @retVal = -1;
        RAISERROR('Transaction failed. Booking/payment not saved.', 16, 1);
    END CATCH
END;
GO
