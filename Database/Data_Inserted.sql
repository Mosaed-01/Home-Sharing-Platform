USE HOME_SHARING_PLATFORM;
GO


INSERT INTO Roles VALUES ('Owner');
INSERT INTO Roles VALUES ('Renter');
GO


INSERT INTO Users VALUES ('Ahmed','Yilmaz','ahmed1@mail.com','Pass@123','+90-530-111-0001','Istanbul, TR',1);
INSERT INTO Users VALUES ('Omar','Ali','omar2@mail.com','Pass@123','+90-530-111-0002','Ankara, TR',1);
INSERT INTO Users VALUES ('Yusuf','Demir','yusuf3@mail.com','Pass@123','+90-530-111-0003','Bursa, TR',1);
INSERT INTO Users VALUES ('Hakan','Oz','hakan4@mail.com','Pass@123','+90-530-111-0004','Istanbul, TR',1);
INSERT INTO Users VALUES ('Eren','Aslan','eren5@mail.com','Pass@123','+90-530-111-0005','Izmir, TR',1);
INSERT INTO Users VALUES ('Khaled','Hamdi','khaled6@mail.com','Pass@123','+90-530-111-0006','Antalya, TR',1);
INSERT INTO Users VALUES ('Bilal','Arslan','bilal7@mail.com','Pass@123','+90-530-111-0007','Ankara, TR',1);

INSERT INTO Users VALUES ('Mona','Hassan','mona8@mail.com','Pass@123','+90-530-111-0008','Istanbul, TR',2);
INSERT INTO Users VALUES ('Sara','Kaya','sara9@mail.com','Pass@123','+90-530-111-0009','Izmir, TR',2);
INSERT INTO Users VALUES ('Lina','Saleh','lina10@mail.com','Pass@123','+90-530-111-0010','Antalya, TR',2);
INSERT INTO Users VALUES ('Nour','Mahmoud','nour11@mail.com','Pass@123','+90-530-111-0011','Ankara, TR',2);
INSERT INTO Users VALUES ('Ayla','Cetin','ayla12@mail.com','Pass@123','+90-530-111-0012','Bursa, TR',2);
INSERT INTO Users VALUES ('Derya','Ugur','derya13@mail.com','Pass@123','+90-530-111-0013','Istanbul, TR',2);
INSERT INTO Users VALUES ('Huda','Farah','huda14@mail.com','Pass@123','+90-530-111-0014','Izmir, TR',2);
INSERT INTO Users VALUES ('Mert','Koc','mert15@mail.com','Pass@123','+90-530-111-0015','Istanbul, TR',2);
GO


INSERT INTO Locations VALUES ('Türkiye','Istanbul','Bagdat Cd','12','5A','34710');
INSERT INTO Locations VALUES ('Türkiye','Istanbul','Istiklal Cd','88','3B','34430');
INSERT INTO Locations VALUES ('Türkiye','Ankara','Tunali Hilmi','21','10','06680');
INSERT INTO Locations VALUES ('Türkiye','Izmir','Kordon','7','2','35210');
INSERT INTO Locations VALUES ('Türkiye','Bursa','Ataturk Cd','33','6','16010');
INSERT INTO Locations VALUES ('Türkiye','Antalya','Lara','54','1','07160');
INSERT INTO Locations VALUES ('Türkiye','Istanbul','Besiktas','4','9','34357');
INSERT INTO Locations VALUES ('Türkiye','Ankara','Kizilay','18','12','06420');
INSERT INTO Locations VALUES ('Türkiye','Izmir','Bornova','40','8','35040');
INSERT INTO Locations VALUES ('Türkiye','Bursa','Nilufer','15','11','16120');
INSERT INTO Locations VALUES ('Türkiye','Antalya','Konyaalti','9','4','07070');
INSERT INTO Locations VALUES ('Türkiye','Istanbul','Kadikoy','66','7','34714');
INSERT INTO Locations VALUES ('Türkiye','Ankara','Cankaya','2','14','06550');
INSERT INTO Locations VALUES ('Türkiye','Izmir','Cesme','1','2','35930');
INSERT INTO Locations VALUES ('Türkiye','Bursa','Osmangazi','70','5','16220');
GO


INSERT INTO Amenities VALUES ('WiFi','Service');
INSERT INTO Amenities VALUES ('Air Conditioner','Appliance');
INSERT INTO Amenities VALUES ('TV','Electronics');
INSERT INTO Amenities VALUES ('Washing Machine','Appliance');
INSERT INTO Amenities VALUES ('Kitchen','Room');
INSERT INTO Amenities VALUES ('Heating','Appliance');
INSERT INTO Amenities VALUES ('Parking','Feature');
INSERT INTO Amenities VALUES ('Pool','Feature');
INSERT INTO Amenities VALUES ('Gym','Feature');
INSERT INTO Amenities VALUES ('Elevator','Feature');
INSERT INTO Amenities VALUES ('Balcony','Feature');
INSERT INTO Amenities VALUES ('Coffee Machine','Appliance');
INSERT INTO Amenities VALUES ('Desk','Furniture');
INSERT INTO Amenities VALUES ('Bed','Furniture');
INSERT INTO Amenities VALUES ('Towels','Linen');
GO


INSERT INTO Properties VALUES (1, 1,'Cozy Kadikoy Studio','Near metro, fast WiFi.',45.00,2);
INSERT INTO Properties VALUES (2, 2,'Taksim City Loft','Walk to Istiklal.',70.00,3);
INSERT INTO Properties VALUES (3, 3,'Ankara Business Flat','Central and quiet.',55.00,2);
INSERT INTO Properties VALUES (4, 4,'Izmir Sea View','Balcony sea view.',90.00,4);
INSERT INTO Properties VALUES (5, 5,'Bursa Family Home','Spacious home.',60.00,5);
INSERT INTO Properties VALUES (6, 6,'Antalya Sunny Apartment','Close to beach.',85.00,4);
INSERT INTO Properties VALUES (7, 7,'Besiktas Compact Room','Budget stay.',35.00,1);
INSERT INTO Properties VALUES (1, 8,'Kizilay Central Suite','Heart of Ankara.',65.00,3);
INSERT INTO Properties VALUES (2, 9,'Bornova Student Spot','Affordable.',40.00,2);
INSERT INTO Properties VALUES (3,10,'Nilufer Modern Condo','Parking included.',58.00,3);
INSERT INTO Properties VALUES (4,11,'Konyaalti Beach Pad','Steps from sea.',95.00,3);
INSERT INTO Properties VALUES (5,12,'Kadikoy Artistic Flat','Calm vibes.',52.00,2);
INSERT INTO Properties VALUES (6,13,'Cankaya Premium Stay','Elegant stay.',110.00,4);
INSERT INTO Properties VALUES (7,14,'Cesme Holiday House','Summer escape.',140.00,6);
INSERT INTO Properties VALUES (1,15,'Osmangazi Classic Apt','Traditional feel.',48.00,2);
GO


INSERT INTO Property_Amenities VALUES (1,1,1);
INSERT INTO Property_Amenities VALUES (1,14,1);
INSERT INTO Property_Amenities VALUES (1,15,2);

INSERT INTO Property_Amenities VALUES (2,1,1);
INSERT INTO Property_Amenities VALUES (2,2,1);
INSERT INTO Property_Amenities VALUES (2,3,1);

INSERT INTO Property_Amenities VALUES (3,1,1);
INSERT INTO Property_Amenities VALUES (3,13,1);
INSERT INTO Property_Amenities VALUES (3,6,1);

INSERT INTO Property_Amenities VALUES (4,1,1);
INSERT INTO Property_Amenities VALUES (4,11,1);
INSERT INTO Property_Amenities VALUES (4,14,2);

INSERT INTO Property_Amenities VALUES (5,1,1);
INSERT INTO Property_Amenities VALUES (5,5,1);
INSERT INTO Property_Amenities VALUES (5,14,3);

INSERT INTO Property_Amenities VALUES (6,1,1);
INSERT INTO Property_Amenities VALUES (6,2,2);
INSERT INTO Property_Amenities VALUES (6,15,4);

INSERT INTO Property_Amenities VALUES (7,1,1);
INSERT INTO Property_Amenities VALUES (7,14,1);

INSERT INTO Property_Amenities VALUES (10,7,1);

INSERT INTO Property_Amenities VALUES (11,8,1);
INSERT INTO Property_Amenities VALUES (11,1,1);

INSERT INTO Property_Amenities VALUES (13,10,1);

INSERT INTO Property_Amenities VALUES (14,8,1);
GO


INSERT INTO Property_Photo VALUES (1,1,'/photos/p1_1.jpg');
INSERT INTO Property_Photo VALUES (1,2,'/photos/p1_2.jpg');
INSERT INTO Property_Photo VALUES (2,1,'/photos/p2_1.jpg');
INSERT INTO Property_Photo VALUES (2,2,'/photos/p2_2.jpg');
INSERT INTO Property_Photo VALUES (3,1,'/photos/p3_1.jpg');
INSERT INTO Property_Photo VALUES (4,1,'/photos/p4_1.jpg');
INSERT INTO Property_Photo VALUES (4,2,'/photos/p4_2.jpg');
INSERT INTO Property_Photo VALUES (5,1,'/photos/p5_1.jpg');
INSERT INTO Property_Photo VALUES (6,1,'/photos/p6_1.jpg');
INSERT INTO Property_Photo VALUES (6,2,'/photos/p6_2.jpg');
INSERT INTO Property_Photo VALUES (7,1,'/photos/p7_1.jpg');
INSERT INTO Property_Photo VALUES (8,1,'/photos/p8_1.jpg');
INSERT INTO Property_Photo VALUES (9,1,'/photos/p9_1.jpg');
INSERT INTO Property_Photo VALUES (10,1,'/photos/p10_1.jpg');
INSERT INTO Property_Photo VALUES (10,2,'/photos/p10_2.jpg');
INSERT INTO Property_Photo VALUES (11,1,'/photos/p11_1.jpg');
INSERT INTO Property_Photo VALUES (12,1,'/photos/p12_1.jpg');
INSERT INTO Property_Photo VALUES (13,1,'/photos/p13_1.jpg');
INSERT INTO Property_Photo VALUES (14,1,'/photos/p14_1.jpg');
INSERT INTO Property_Photo VALUES (15,1,'/photos/p15_1.jpg');
GO


INSERT INTO Property_Availability VALUES (1,'2025-12-21','Maintenance');
INSERT INTO Property_Availability VALUES (1,'2025-12-22','Maintenance');
INSERT INTO Property_Availability VALUES (2,'2025-12-19','Booked');
INSERT INTO Property_Availability VALUES (2,'2025-12-24','Owner stay');
INSERT INTO Property_Availability VALUES (3,'2025-12-23','Booked');
INSERT INTO Property_Availability VALUES (4,'2025-12-20','Booked');
INSERT INTO Property_Availability VALUES (4,'2025-12-25','Maintenance');
INSERT INTO Property_Availability VALUES (5,'2025-12-26','Booked');
INSERT INTO Property_Availability VALUES (6,'2025-12-22','Booked');
INSERT INTO Property_Availability VALUES (6,'2025-12-28','Owner stay');
INSERT INTO Property_Availability VALUES (7,'2025-12-17','Booked');
INSERT INTO Property_Availability VALUES (8,'2025-12-27','Booked');
INSERT INTO Property_Availability VALUES (9,'2025-12-21','Booked');
INSERT INTO Property_Availability VALUES (10,'2025-12-24','Booked');
INSERT INTO Property_Availability VALUES (11,'2025-12-29','Booked');
INSERT INTO Property_Availability VALUES (12,'2025-12-20','Booked');
INSERT INTO Property_Availability VALUES (13,'2025-12-23','Booked');
INSERT INTO Property_Availability VALUES (14,'2025-12-31','Booked');
INSERT INTO Property_Availability VALUES (15,'2025-12-19','Booked');
INSERT INTO Property_Availability VALUES (15,'2025-12-25','Maintenance');
GO


INSERT INTO Bookings VALUES (8, 1,'2025-12-20','2025-12-23',135.00,'Confirmed');
INSERT INTO Bookings VALUES (9, 2,'2025-12-18','2025-12-20',140.00,'Confirmed');
INSERT INTO Bookings VALUES (10,3,'2025-12-22','2025-12-25',165.00,'Pending');
INSERT INTO Bookings VALUES (11,4,'2025-12-19','2025-12-22',270.00,'Confirmed');
INSERT INTO Bookings VALUES (12,5,'2025-12-24','2025-12-27',180.00,'Confirmed');
INSERT INTO Bookings VALUES (13,6,'2025-12-21','2025-12-24',255.00,'Pending');
INSERT INTO Bookings VALUES (14,7,'2025-12-17','2025-12-18',35.00,'Confirmed');
INSERT INTO Bookings VALUES (15,8,'2025-12-26','2025-12-28',130.00,'Pending');
INSERT INTO Bookings VALUES (8, 9,'2025-12-20','2025-12-22',80.00,'Confirmed');
INSERT INTO Bookings VALUES (9,10,'2025-12-23','2025-12-26',174.00,'Confirmed');
INSERT INTO Bookings VALUES (10,11,'2025-12-27','2025-12-30',285.00,'Pending');
INSERT INTO Bookings VALUES (11,12,'2025-12-19','2025-12-21',104.00,'Confirmed');
INSERT INTO Bookings VALUES (12,13,'2025-12-22','2025-12-24',220.00,'Confirmed');
INSERT INTO Bookings VALUES (13,14,'2025-12-28','2026-01-02',700.00,'Pending');
INSERT INTO Bookings VALUES (14,15,'2025-12-18','2025-12-20',96.00,'Confirmed');
GO


INSERT INTO Payments VALUES (1,135.00,'Card','2025-12-13T10:00:00');
INSERT INTO Payments VALUES (2,140.00,'Card','2025-12-13T10:05:00');
INSERT INTO Payments VALUES (3,165.00,'Transfer','2025-12-13T10:10:00');
INSERT INTO Payments VALUES (4,270.00,'Card','2025-12-13T10:15:00');
INSERT INTO Payments VALUES (5,180.00,'Cash','2025-12-13T10:20:00');
INSERT INTO Payments VALUES (6,255.00,'Card','2025-12-13T10:25:00');
INSERT INTO Payments VALUES (7,35.00,'Card','2025-12-13T10:30:00');
INSERT INTO Payments VALUES (8,130.00,'Transfer','2025-12-13T10:35:00');
INSERT INTO Payments VALUES (9,80.00,'Card','2025-12-13T10:40:00');
INSERT INTO Payments VALUES (10,174.00,'Card','2025-12-13T10:45:00');
INSERT INTO Payments VALUES (11,285.00,'Transfer','2025-12-13T10:50:00');
INSERT INTO Payments VALUES (12,104.00,'Card','2025-12-13T10:55:00');
INSERT INTO Payments VALUES (13,220.00,'Card','2025-12-13T11:00:00');
INSERT INTO Payments VALUES (14,700.00,'Transfer','2025-12-13T11:05:00');
INSERT INTO Payments VALUES (15,96.00,'Cash','2025-12-13T11:10:00');
GO


INSERT INTO Reviews VALUES (1,8,5,'Super clean and easy check-in.','2025-12-13T12:00:00');
INSERT INTO Reviews VALUES (2,9,4,'Great location, bit noisy.','2025-12-13T12:05:00');
INSERT INTO Reviews VALUES (3,10,5,'Perfect for work trip.','2025-12-13T12:10:00');
INSERT INTO Reviews VALUES (4,11,5,'Sea view was amazing.','2025-12-13T12:15:00');
INSERT INTO Reviews VALUES (5,12,4,'Spacious and comfortable.','2025-12-13T12:20:00');
INSERT INTO Reviews VALUES (6,13,5,'Close to beach, loved it.','2025-12-13T12:25:00');
INSERT INTO Reviews VALUES (7,14,3,'Small but okay.','2025-12-13T12:30:00');
INSERT INTO Reviews VALUES (8,15,4,'Very central, good value.','2025-12-13T12:35:00');
INSERT INTO Reviews VALUES (9,8,4,'Easy transport.','2025-12-13T12:40:00');
INSERT INTO Reviews VALUES (10,9,5,'Modern building.','2025-12-13T12:45:00');
INSERT INTO Reviews VALUES (11,10,5,'Steps from the sea!','2025-12-13T12:50:00');
INSERT INTO Reviews VALUES (12,11,4,'Nice design.','2025-12-13T12:55:00');
INSERT INTO Reviews VALUES (13,12,5,'Premium and quiet.','2025-12-13T13:00:00');
INSERT INTO Reviews VALUES (14,13,5,'Best holiday house.','2025-12-13T13:05:00');
INSERT INTO Reviews VALUES (15,14,4,'Classic vibe.','2025-12-13T13:10:00');
GO


INSERT INTO Review_Reply VALUES (1,'Thanks! Happy you enjoyed your stay.','2025-12-13T14:00:00');
INSERT INTO Review_Reply VALUES (2,'Appreciate it! We will improve that.','2025-12-13T14:02:00');
INSERT INTO Review_Reply VALUES (3,'Glad it helped your trip.','2025-12-13T14:04:00');
INSERT INTO Review_Reply VALUES (4,'Welcome anytime!','2025-12-13T14:06:00');
INSERT INTO Review_Reply VALUES (5,'Thanks for the feedback!','2025-12-13T14:08:00');
INSERT INTO Review_Reply VALUES (6,'So happy you liked it!','2025-12-13T14:10:00');
INSERT INTO Review_Reply VALUES (7,'Noted, we will upgrade soon.','2025-12-13T14:12:00');
INSERT INTO Review_Reply VALUES (8,'Thank you!','2025-12-13T14:14:00');
INSERT INTO Review_Reply VALUES (9,'Great to hear that.','2025-12-13T14:16:00');
INSERT INTO Review_Reply VALUES (10,'See you again soon.','2025-12-13T14:18:00');
GO


INSERT INTO Messages VALUES (8,1,'Hi, is early check-in possible?','2025-12-13T15:00:00');
INSERT INTO Messages VALUES (1,8,'Yes, early check-in at 12:00 works.','2025-12-13T15:02:00');
INSERT INTO Messages VALUES (9,2,'Is the place close to metro?','2025-12-13T15:04:00');
INSERT INTO Messages VALUES (2,9,'Yes, about 6 minutes walk.','2025-12-13T15:06:00');
INSERT INTO Messages VALUES (10,3,'Can I extend one more day?','2025-12-13T15:08:00');
INSERT INTO Messages VALUES (3,10,'Sure, I will update availability.','2025-12-13T15:10:00');
INSERT INTO Messages VALUES (11,4,'Do you provide towels?','2025-12-13T15:12:00');
INSERT INTO Messages VALUES (4,11,'Yes, towels are included.','2025-12-13T15:14:00');
INSERT INTO Messages VALUES (12,5,'Is parking available?','2025-12-13T15:16:00');
INSERT INTO Messages VALUES (5,12,'Yes, one free spot.','2025-12-13T15:18:00');
INSERT INTO Messages VALUES (13,6,'How far is the beach?','2025-12-13T15:20:00');
INSERT INTO Messages VALUES (6,13,'About 4 minutes on foot.','2025-12-13T15:22:00');
INSERT INTO Messages VALUES (14,7,'Can we bring 2 guests?','2025-12-13T15:24:00');
INSERT INTO Messages VALUES (7,14,'Yes, capacity allows.','2025-12-13T15:26:00');
INSERT INTO Messages VALUES (15,1,'Thanks! Booking confirmed.','2025-12-13T15:28:00');
GO


INSERT INTO Notifications VALUES (8,'Your booking is confirmed.','Unread','2025-12-13T16:00:00');
INSERT INTO Notifications VALUES (9,'Your booking is confirmed.','Unread','2025-12-13T16:01:00');
INSERT INTO Notifications VALUES (10,'Payment received.','Unread','2025-12-13T16:02:00');
INSERT INTO Notifications VALUES (11,'New message received.','Unread','2025-12-13T16:03:00');
INSERT INTO Notifications VALUES (12,'Review submitted successfully.','Unread','2025-12-13T16:04:00');
INSERT INTO Notifications VALUES (13,'Owner replied to your review.','Unread','2025-12-13T16:05:00');
INSERT INTO Notifications VALUES (14,'Booking pending approval.','Unread','2025-12-13T16:06:00');
INSERT INTO Notifications VALUES (1,'You received a new message.','Unread','2025-12-13T16:07:00');
INSERT INTO Notifications VALUES (2,'You received a new message.','Unread','2025-12-13T16:08:00');
INSERT INTO Notifications VALUES (3,'You received a new message.','Unread','2025-12-13T16:09:00');
INSERT INTO Notifications VALUES (4,'You received a new message.','Unread','2025-12-13T16:10:00');
INSERT INTO Notifications VALUES (5,'You received a new message.','Unread','2025-12-13T16:11:00');
INSERT INTO Notifications VALUES (6,'You received a new message.','Unread','2025-12-13T16:12:00');
INSERT INTO Notifications VALUES (7,'You received a new message.','Unread','2025-12-13T16:13:00');
INSERT INTO Notifications VALUES (15,'System: Welcome to HomeSharingPlatform.','Unread','2025-12-13T16:14:00');
GO
