CREATE DATABASE HOME_SHARING_PLATFORM;
GO
USE HOME_SHARING_PLATFORM;
GO


CREATE TABLE Roles (
    Role_ID    INT IDENTITY(1,1) PRIMARY KEY,
    Role_Name  VARCHAR(50) NOT NULL UNIQUE
);
GO

CREATE TABLE Users (
    User_ID     INT IDENTITY(1,1) PRIMARY KEY,
    First_Name  VARCHAR(50) NOT NULL,
    Last_Name   VARCHAR(50) NOT NULL,
    Email       VARCHAR(120) NOT NULL UNIQUE,
    Password    VARCHAR(200) NOT NULL,
    Phone_No    VARCHAR(30) NULL,
    Address     VARCHAR(200) NULL,
    Role_ID     INT NOT NULL,

    CONSTRAINT FK_Users_Roles
        FOREIGN KEY (Role_ID) REFERENCES Roles(Role_ID)
);
GO


CREATE TABLE Locations (
    Location_ID   INT IDENTITY(1,1) PRIMARY KEY,
    Country       VARCHAR(100) NOT NULL,
    City          VARCHAR(100) NOT NULL,
    Street        VARCHAR(200) NULL,
    Building_No   VARCHAR(50) NULL,
    Apartment_No  VARCHAR(50) NULL,
    Postal_Code   VARCHAR(20) NULL
);
GO

CREATE TABLE Amenities (
    Amenity_ID    INT IDENTITY(1,1) PRIMARY KEY,
    Amenity_Name  VARCHAR(100) NOT NULL,
    Amenity_Type  VARCHAR(50) NULL
);
GO

CREATE TABLE Properties (
    Property_ID    INT IDENTITY(1,1) PRIMARY KEY,
    Owner_ID       INT NOT NULL,
    Location_ID    INT NOT NULL,
    Title          VARCHAR(150) NOT NULL,
    Description    VARCHAR(1000) NULL,
    Price_Per_Day  DECIMAL(10,2) NOT NULL,
    Capacity       INT NOT NULL,

    CONSTRAINT FK_Properties_Owner
        FOREIGN KEY (Owner_ID) REFERENCES Users(User_ID),

    CONSTRAINT FK_Properties_Location
        FOREIGN KEY (Location_ID) REFERENCES Locations(Location_ID),

    CONSTRAINT UQ_Properties_LocationID
        UNIQUE (Location_ID),

    CONSTRAINT CK_Properties_Capacity
        CHECK (Capacity >= 1),

    CONSTRAINT CK_Properties_Price
        CHECK (Price_Per_Day >= 0)
);
GO


CREATE TABLE Bookings (
    Booking_ID    INT IDENTITY(1,1) PRIMARY KEY,
    User_ID       INT NOT NULL,
    Property_ID   INT NOT NULL,
    Check_In      DATE NOT NULL,
    Check_Out     DATE NOT NULL,
    Total_Price   DECIMAL(10,2) NULL,
    Status        VARCHAR(30) NOT NULL DEFAULT 'Pending',

    CONSTRAINT FK_Bookings_User
        FOREIGN KEY (User_ID) REFERENCES Users(User_ID),

    CONSTRAINT FK_Bookings_Property
        FOREIGN KEY (Property_ID) REFERENCES Properties(Property_ID),

    CONSTRAINT CK_Bookings_Dates
        CHECK (Check_Out > Check_In)
);
GO

CREATE TABLE Payments (
    Payment_ID    INT IDENTITY(1,1) PRIMARY KEY,
    Booking_ID    INT NOT NULL UNIQUE,
    Amount        DECIMAL(10,2) NOT NULL,
    Method        VARCHAR(30) NOT NULL,
    Payment_Date  DATETIME2 NOT NULL DEFAULT SYSDATETIME(),

    CONSTRAINT FK_Payments_Booking
        FOREIGN KEY (Booking_ID) REFERENCES Bookings(Booking_ID)
        ON DELETE CASCADE,

    CONSTRAINT CK_Payments_Amount
        CHECK (Amount >= 0)
);
GO

CREATE TABLE Reviews (
    Review_ID    INT IDENTITY(1,1) PRIMARY KEY,
    Property_ID  INT NOT NULL,
    User_ID      INT NOT NULL,
    Rating       INT NOT NULL,
    Comment      VARCHAR(1000) NULL,
    Review_Date  DATETIME2 NOT NULL DEFAULT SYSDATETIME(),

    CONSTRAINT FK_Reviews_Property
        FOREIGN KEY (Property_ID) REFERENCES Properties(Property_ID)
        ON DELETE CASCADE,

    CONSTRAINT FK_Reviews_User
        FOREIGN KEY (User_ID) REFERENCES Users(User_ID),

    CONSTRAINT CK_Reviews_Rating
        CHECK (Rating BETWEEN 1 AND 5)
);
GO


CREATE TABLE Review_Reply (
    Review_ID   INT NOT NULL,
    Reply_Text  VARCHAR(1000) NOT NULL,
    Reply_Date  DATETIME2 NOT NULL DEFAULT SYSDATETIME(),

    CONSTRAINT PK_Review_Reply
        PRIMARY KEY (Review_ID),

    CONSTRAINT FK_ReviewReply_Review
        FOREIGN KEY (Review_ID) REFERENCES Reviews(Review_ID)
        ON DELETE CASCADE
);
GO


CREATE TABLE Property_Photo (
    Property_ID  INT NOT NULL,
    Photo_No     INT NOT NULL,
    Photo_Url    VARCHAR(500) NOT NULL,

    CONSTRAINT PK_Property_Photo
        PRIMARY KEY (Property_ID, Photo_No),

    CONSTRAINT FK_PropertyPhoto_Property
        FOREIGN KEY (Property_ID) REFERENCES Properties(Property_ID)
        ON DELETE CASCADE
);
GO


CREATE TABLE Property_Availability (
    Property_ID       INT NOT NULL,
    Unavailable_Date  DATE NOT NULL,
    Reason            VARCHAR(200) NULL,

    CONSTRAINT PK_Property_Availability
        PRIMARY KEY (Property_ID, Unavailable_Date),

    CONSTRAINT FK_PropertyAvailability_Property
        FOREIGN KEY (Property_ID) REFERENCES Properties(Property_ID)
        ON DELETE CASCADE
);
GO

CREATE TABLE Property_Amenities (
    Property_ID  INT NOT NULL,
    Amenity_ID   INT NOT NULL,
    Quantity     INT NOT NULL DEFAULT 1,

    CONSTRAINT PK_Property_Amenities
        PRIMARY KEY (Property_ID, Amenity_ID),

    CONSTRAINT FK_PropertyAmenities_Property
        FOREIGN KEY (Property_ID) REFERENCES Properties(Property_ID)
        ON DELETE CASCADE,

    CONSTRAINT FK_PropertyAmenities_Amenity
        FOREIGN KEY (Amenity_ID) REFERENCES Amenities(Amenity_ID),

    CONSTRAINT CK_PropertyAmenities_Qty
        CHECK (Quantity >= 1)
);
GO


CREATE TABLE Messages (
    Message_ID    INT IDENTITY(1,1) PRIMARY KEY,
    Sender_ID     INT NOT NULL,
    Receiver_ID   INT NOT NULL,
    Message_Text  VARCHAR(2000) NOT NULL,
    Sent_At       DATETIME2 NOT NULL DEFAULT SYSDATETIME(),

    CONSTRAINT FK_Messages_Sender
        FOREIGN KEY (Sender_ID) REFERENCES Users(User_ID),

    CONSTRAINT FK_Messages_Receiver
        FOREIGN KEY (Receiver_ID) REFERENCES Users(User_ID),

    CONSTRAINT CK_Messages_NotSame
        CHECK (Sender_ID <> Receiver_ID)
);
GO

CREATE TABLE Notifications (
    Notification_ID  INT IDENTITY(1,1) PRIMARY KEY,
    User_ID          INT NOT NULL,
    Message          VARCHAR(500) NOT NULL,
    Status           VARCHAR(30) NOT NULL DEFAULT 'Unread',
    Notif_Date       DATETIME2 NOT NULL DEFAULT SYSDATETIME(),

    CONSTRAINT FK_Notifications_User
        FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
        ON DELETE CASCADE
);
GO