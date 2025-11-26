show user;

-- Delete from child tables first
DELETE FROM HMS_ADMIN.TOUR;
DELETE FROM HMS_ADMIN.BOOKING;
DELETE FROM HMS_ADMIN.WISHLIST;
DELETE FROM HMS_ADMIN.BROKER_PROPERTY;

-- Delete from intermediate tables
DELETE FROM HMS_ADMIN.PROPERTY;
DELETE FROM HMS_ADMIN.STUDENT;

-- Delete from parent tables
DELETE FROM HMS_ADMIN.BROKER;
DELETE FROM HMS_ADMIN.OWNER;
DELETE FROM HMS_ADMIN.ADMIN;
COMMIT;

-- Inserting data into admin table while connecting as an HMS_ADMIN. ADMINS (10)
INSERT INTO HMS_ADMIN.ADMIN (password, email, name, phone) VALUES ('JAdmin2024!','john.mitchell@housing.edu','John Mitchell','617-423-8891');
INSERT INTO HMS_ADMIN.ADMIN (password, email, name, phone) VALUES ('SarahP@ss2024','sarah.patterson@housing.edu','Sarah Patterson','857-234-5672');
INSERT INTO HMS_ADMIN.ADMIN (password, email, name, phone) VALUES ('MikeR#2024','michael.rodriguez@housing.edu','Michael Rodriguez','781-556-9043');
INSERT INTO HMS_ADMIN.ADMIN (password, email, name, phone) VALUES ('EmmaW2024$','emma.wilson@housing.edu','Emma Wilson','508-892-3341');
INSERT INTO HMS_ADMIN.ADMIN (password, email, name, phone) VALUES ('DThompson!24','david.thompson@housing.edu','David Thompson','978-447-7823');
INSERT INTO HMS_ADMIN.ADMIN (password, email, name, phone) VALUES ('OliviaM@24','olivia.martinez@housing.edu','Olivia Martinez','774-201-6554');
INSERT INTO HMS_ADMIN.ADMIN (password, email, name, phone) VALUES ('LAnderson24#','liam.anderson@housing.edu','Liam Anderson','339-298-4109');
INSERT INTO HMS_ADMIN.ADMIN (password, email, name, phone) VALUES ('NTaylor!2024','noah.taylor@housing.edu','Noah Taylor','617-889-5234');
INSERT INTO HMS_ADMIN.ADMIN (password, email, name, phone) VALUES ('AvaLee$2024','ava.lee@housing.edu','Ava Lee','857-641-3987');
INSERT INTO HMS_ADMIN.ADMIN (password, email, name, phone) VALUES ('SophiaJ#24','sophia.johnson@housing.edu','Sophia Johnson','781-902-4556');
COMMIT;

-- BROKERS (10) - assign admin_id values 1..10
INSERT INTO HMS_ADMIN.BROKER (admin_id, name, email, phone, broker_license_number) VALUES (1,'Marcus Chen','marcus.chen@bostonbrokers.com','617-334-7821','BRK-MA-2891');
INSERT INTO HMS_ADMIN.BROKER (admin_id, name, email, phone, broker_license_number) VALUES (2,'Jennifer Lopez','jennifer.lopez@bostonbrokers.com','857-776-4523','BRK-MA-3047');
INSERT INTO HMS_ADMIN.BROKER (admin_id, name, email, phone, broker_license_number) VALUES (3,'David Kim','david.kim@bostonbrokers.com','781-229-8816','BRK-MA-2734');
INSERT INTO HMS_ADMIN.BROKER (admin_id, name, email, phone, broker_license_number) VALUES (4,'Maria Santos','maria.santos@bostonbrokers.com','508-645-3392','BRK-MA-3156');
INSERT INTO HMS_ADMIN.BROKER (admin_id, name, email, phone, broker_license_number) VALUES (5,'Robert Williams','robert.williams@bostonbrokers.com','978-512-6677','BRK-MA-2998');
INSERT INTO HMS_ADMIN.BROKER (admin_id, name, email, phone, broker_license_number) VALUES (6,'Aisha Patel','aisha.patel@bostonbrokers.com','774-883-2194','BRK-MA-3421');
INSERT INTO HMS_ADMIN.BROKER (admin_id, name, email, phone, broker_license_number) VALUES (7,'Carlos Ramirez','carlos.ramirez@bostonbrokers.com','339-447-9058','BRK-MA-2867');
INSERT INTO HMS_ADMIN.BROKER (admin_id, name, email, phone, broker_license_number) VALUES (8,'Priya Sharma','priya.sharma@bostonbrokers.com','617-902-5541','BRK-MA-3289');
INSERT INTO HMS_ADMIN.BROKER (admin_id, name, email, phone, broker_license_number) VALUES (9,'James O''Brien','james.obrien@bostonbrokers.com','857-336-8123','BRK-MA-2705');
INSERT INTO HMS_ADMIN.BROKER (admin_id, name, email, phone, broker_license_number) VALUES (10,'Emily Park','emily.park@bostonbrokers.com','781-654-7239','BRK-MA-3398');
COMMIT;

-- OWNERS (10)
INSERT INTO HMS_ADMIN.OWNER (admin_id, name, email, phone, deed_document_number, verified_status) VALUES (1,'James Peterson','james.peterson@gmail.com','617-778-4521','DEED-2019-4472','Verified');
INSERT INTO HMS_ADMIN.OWNER (admin_id, name, email, phone, deed_document_number, verified_status) VALUES (2,'Linda Chen','lchen.property@yahoo.com','857-993-6638','DEED-2020-8891','Verified');
INSERT INTO HMS_ADMIN.OWNER (admin_id, name, email, phone, deed_document_number, verified_status) VALUES (3,'Christopher Davis','chris.davis@outlook.com','781-445-2309','DEED-2021-3356','Pending');
INSERT INTO HMS_ADMIN.OWNER (admin_id, name, email, phone, deed_document_number, verified_status) VALUES (4,'Patricia Martinez','p.martinez.realty@gmail.com','508-332-8847','DEED-2018-7723','Verified');
INSERT INTO HMS_ADMIN.OWNER (admin_id, name, email, phone, deed_document_number, verified_status) VALUES (5,'Thomas Anderson','tanderson.homes@icloud.com','978-621-5594','DEED-2022-1156','Not Verified');
INSERT INTO HMS_ADMIN.OWNER (admin_id, name, email, phone, deed_document_number, verified_status) VALUES (6,'Olivia Brown','olivia.brown88@gmail.com','774-209-3317','DEED-2019-9034','Verified');
INSERT INTO HMS_ADMIN.OWNER (admin_id, name, email, phone, deed_document_number, verified_status) VALUES (7,'Daniel Green','dgreen.properties@yahoo.com','339-776-4482','DEED-2021-5667','Verified');
INSERT INTO HMS_ADMIN.OWNER (admin_id, name, email, phone, deed_document_number, verified_status) VALUES (8,'Sanjay Kumar','sanjay.kumar@gmail.com','617-543-9921','DEED-2020-2289','Pending');
INSERT INTO HMS_ADMIN.OWNER (admin_id, name, email, phone, deed_document_number, verified_status) VALUES (9,'Hannah Lee','hlee.rentals@outlook.com','857-418-6672','DEED-2017-6445','Verified');
INSERT INTO HMS_ADMIN.OWNER (admin_id, name, email, phone, deed_document_number, verified_status) VALUES (10,'Grace Kim','grace.kim.boston@icloud.com','781-834-2105','DEED-2023-1178','Verified');
COMMIT;

-- PROPERTIES (12) - varied neighborhoods & near universities
INSERT INTO HMS_ADMIN.PROPERTY (owner_id, broker_id, title, address, city, rent, availability_status, type, description, amenities) VALUES (1000,100,'Modern Studio - Back Bay','234 Newbury St, Back Bay','Boston',2450.00,'Available','Studio','Newly renovated studio with hardwood floors and city views','WiFi,Laundry in building,Central heating,Dishwasher');
INSERT INTO HMS_ADMIN.PROPERTY (owner_id, broker_id, title, address, city, rent, availability_status, type, description, amenities) VALUES (1000,101,'Spacious 2BR Near BU','567 Commonwealth Ave','Boston',3200.00,'Available','2 Bedroom','Updated apartment close to Boston University and public transit','Parking spot,WiFi ready,Dishwasher,AC');
INSERT INTO HMS_ADMIN.PROPERTY (owner_id, broker_id, title, address, city, rent, availability_status, type, description, amenities) VALUES (1001,102,'Harvard Square 1BR','89 Harvard St','Cambridge',3100.00,'Available','1 Bedroom','Charming one bedroom near Harvard Square with original details','Central AC,Heating,Hardwood floors,Storage');
INSERT INTO HMS_ADMIN.PROPERTY (owner_id, broker_id, title, address, city, rent, availability_status, type, description, amenities) VALUES (1002,103,'Student-Friendly 3BR Allston','145 Brighton Ave','Boston',2700.00,'Available','3 Bedroom','Perfect for students, walking distance to shops and T station','In-unit laundry,WiFi,Storage space,Heat included');
INSERT INTO HMS_ADMIN.PROPERTY (owner_id, broker_id, title, address, city, rent, availability_status, type, description, amenities) VALUES (1003,104,'Luxury Seaport 2BR','777 Seaport Blvd','Boston',5200.00,'Occupied','2 Bedroom','High-end waterfront living with stunning harbor views','Gym,Pool,24hr Concierge,Parking,Roof deck');
INSERT INTO HMS_ADMIN.PROPERTY (owner_id, broker_id, title, address, city, rent, availability_status, type, description, amenities) VALUES (1004,105,'Cozy Fenway Studio','412 Park Drive','Boston',2150.00,'Available','Studio','Efficient studio apartment steps from Fenway Park','WiFi ready,Heat included,Laundry in basement');
INSERT INTO HMS_ADMIN.PROPERTY (owner_id, broker_id, title, address, city, rent, availability_status, type, description, amenities) VALUES (1005,106,'Brookline Family Home','45 Beacon St','Brookline',4800.00,'Available','3 Bedroom','Beautiful single-family house with yard and garage','Garage,Backyard,Washer/dryer,Dishwasher,Gas heating');
INSERT INTO HMS_ADMIN.PROPERTY (owner_id, broker_id, title, address, city, rent, availability_status, type, description, amenities) VALUES (1006,107,'Tufts Area 1BR','223 Boston Ave','Medford',2250.00,'Available','1 Bedroom','Quiet neighborhood close to Tufts University campus','Off-street parking,Heat,WiFi,Updated kitchen');
INSERT INTO HMS_ADMIN.PROPERTY (owner_id, broker_id, title, address, city, rent, availability_status, type, description, amenities) VALUES (1007,108,'Somerville 2BR Duplex','200 Highland Ave','Somerville',3400.00,'Available','2 Bedroom','Bright duplex with modern updates and private entrance','In-unit laundry,AC,Parking,Patio space');
INSERT INTO HMS_ADMIN.PROPERTY (owner_id, broker_id, title, address, city, rent, availability_status, type, description, amenities) VALUES (1008,109,'Jamaica Plain 4BR','88 Centre St','Boston',4100.00,'Available','4 Bedroom','Large house ideal for roommates with multiple living spaces','Yard,Storage,Washer/dryer,Hardwood floors,Porch');
INSERT INTO HMS_ADMIN.PROPERTY (owner_id, broker_id, title, address, city, rent, availability_status, type, description, amenities) VALUES (1009,100,'Cambridge 1BR Apartment','723 Massachusetts Ave','Cambridge',2650.00,'Available','1 Bedroom','Well-maintained building in Central Square area','Heat included,Water included,Laundry,Bike storage');
INSERT INTO HMS_ADMIN.PROPERTY (owner_id, broker_id, title, address, city, rent, availability_status, type, description, amenities) VALUES (1004,101,'Northeastern Area Studio','340 Huntington Ave','Boston',2300.00,'Available','Studio','Perfect for grad students, very close to Northeastern campus','WiFi ready,Laundry,Heat included,Close to T');
COMMIT;

-- ===========================
-- BROKER_PROPERTY (25)
-- ===========================
INSERT INTO HMS_ADMIN.BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (100,2000,DATE '2024-01-15','N');
INSERT INTO HMS_ADMIN.BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (101,2000,DATE '2024-03-22','N');
INSERT INTO HMS_ADMIN.BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (100,2000,DATE '2025-02-10','Y');
INSERT INTO HMS_ADMIN.BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (101,2001,DATE '2024-05-18','N');
INSERT INTO HMS_ADMIN.BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (102,2001,DATE '2024-08-03','Y');
INSERT INTO HMS_ADMIN.BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (102,2002,DATE '2024-02-28','Y');
INSERT INTO HMS_ADMIN.BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (103,2003,DATE '2023-11-14','N');
INSERT INTO HMS_ADMIN.BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (104,2003,DATE '2024-06-05','Y');
INSERT INTO HMS_ADMIN.BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (105,2004,DATE '2024-04-17','N');
INSERT INTO HMS_ADMIN.BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (106,2004,DATE '2024-07-22','N');
INSERT INTO HMS_ADMIN.BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (104,2004,DATE '2025-01-30','Y');
INSERT INTO HMS_ADMIN.BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (107,2005,DATE '2024-09-12','Y');
INSERT INTO HMS_ADMIN.BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (108,2006,DATE '2024-10-08','Y');
INSERT INTO HMS_ADMIN.BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (109,2007,DATE '2024-11-25','Y');
INSERT INTO HMS_ADMIN.BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (101,2008,DATE '2024-12-03','Y');
INSERT INTO HMS_ADMIN.BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (100,2009,DATE '2025-03-14','Y');
INSERT INTO HMS_ADMIN.BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (102,2010,DATE '2024-07-09','Y');
INSERT INTO HMS_ADMIN.BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (103,2011,DATE '2024-04-21','Y');
INSERT INTO HMS_ADMIN.BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (104,2005,DATE '2023-12-05','N');
INSERT INTO HMS_ADMIN.BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (105,2006,DATE '2023-10-19','N');
INSERT INTO HMS_ADMIN.BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (106,2007,DATE '2024-01-28','N');
INSERT INTO HMS_ADMIN.BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (107,2008,DATE '2024-06-16','N');
INSERT INTO HMS_ADMIN.BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (108,2009,DATE '2024-08-11','N');
INSERT INTO HMS_ADMIN.BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (109,2010,DATE '2024-09-24','N');
INSERT INTO HMS_ADMIN.BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (100,2011,DATE '2025-01-07','Y');
COMMIT;

-- ===========================
-- STUDENTS (12)
-- ===========================
INSERT INTO HMS_ADMIN.STUDENT (name, email, phone, university, preferred_city, dob, gender, student_id_type) VALUES ('Arjun Patel','arjun.patel@northeastern.edu','781-402-8831','Northeastern University','Boston',DATE '1999-04-12','Male','I-20');
INSERT INTO HMS_ADMIN.STUDENT (name, email, phone, university, preferred_city, dob, gender, student_id_type) VALUES ('Maria Santos','maria.santos@bu.edu','508-771-6492','Boston University','Boston',DATE '2001-09-23','Female','State ID');
INSERT INTO HMS_ADMIN.STUDENT (name, email, phone, university, preferred_city, dob, gender, student_id_type) VALUES ('Wei Zhang','wei.zhang@harvard.edu','646-338-2147','Harvard University','Cambridge',DATE '1998-11-05','Male','US Passport');
INSERT INTO HMS_ADMIN.STUDENT (name, email, phone, university, preferred_city, dob, gender, student_id_type) VALUES ('Sara Al-Masri','sara.almasri@tufts.edu','201-445-9283','Tufts University','Medford',DATE '2000-12-18','Female','I-20');
INSERT INTO HMS_ADMIN.STUDENT (name, email, phone, university, preferred_city, dob, gender, student_id_type) VALUES ('Daniel Kim','daniel.kim@northeastern.edu','774-923-5516','Northeastern University','Boston',DATE '2002-03-07','Male','State ID');
INSERT INTO HMS_ADMIN.STUDENT (name, email, phone, university, preferred_city, dob, gender, student_id_type) VALUES ('Olivia Chen','olivia.chen@harvard.edu','617-558-7392','Harvard University','Cambridge',DATE '2001-07-14','Female','US Passport');
INSERT INTO HMS_ADMIN.STUDENT (name, email, phone, university, preferred_city, dob, gender, student_id_type) VALUES ('Marcus Johnson','marcus.j@bu.edu','857-641-8204','Boston University','Boston',DATE '1999-01-29','Male','Driving License');
INSERT INTO HMS_ADMIN.STUDENT (name, email, phone, university, preferred_city, dob, gender, student_id_type) VALUES ('Anita Singh','anita.singh@tufts.edu','781-226-4973','Tufts University','Somerville',DATE '2000-08-11','Female','I-20');
INSERT INTO HMS_ADMIN.STUDENT (name, email, phone, university, preferred_city, dob, gender, student_id_type) VALUES ('Liam O''Donnell','liam.odonnell@northeastern.edu','978-334-6128','Northeastern University','Boston',DATE '2001-10-22','Male','State ID');
INSERT INTO HMS_ADMIN.STUDENT (name, email, phone, university, preferred_city, dob, gender, student_id_type) VALUES ('Zoe Miller','zoe.miller@bc.edu','617-892-3365','Boston College','Chestnut Hill',DATE '2002-05-16','Female','Driving License');
INSERT INTO HMS_ADMIN.STUDENT (name, email, phone, university, preferred_city, dob, gender, student_id_type) VALUES ('Carlos Fernandez','carlos.f@umass.edu','339-776-1849','UMass Boston','Boston',DATE '1998-06-30','Male','US Passport');
INSERT INTO HMS_ADMIN.STUDENT (name, email, phone, university, preferred_city, dob, gender, student_id_type) VALUES ('Nina Gupta','nina.gupta@mit.edu','508-447-5920','MIT','Cambridge',DATE '2003-02-08','Female','I-20');
COMMIT;
-- ===========================
-- WISHLIST (20)
-- ===========================
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (10000,2000,DATE '2025-09-15');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (10000,2002,DATE '2025-09-18');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (10001,2001,DATE '2025-09-22');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (10002,2003,DATE '2025-10-03');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (10003,2002,DATE '2025-08-27');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (10004,2005,DATE '2025-07-14');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (10005,2010,DATE '2025-06-08');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (10006,2007,DATE '2025-05-19');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (10007,2006,DATE '2025-04-11');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (10008,2004,DATE '2025-03-25');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (10009,2008,DATE '2025-02-17');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (10010,2011,DATE '2025-01-29');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (10011,2009,DATE '2025-01-05');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (10001,2010,DATE '2025-10-12');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (10002,2000,DATE '2025-09-30');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (10003,2001,DATE '2025-08-14');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (10004,2002,DATE '2025-07-22');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (10005,2003,DATE '2025-06-18');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (10006,2004,DATE '2025-05-07');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (10007,2005,DATE '2025-04-26');
COMMIT;

-- ===========================
-- BOOKING (15)
-- ===========================
-- Inserting data into Booking table while connecting as an HMS_OPERATOR.
INSERT INTO HMS_ADMIN.BOOKING (tenant_id, property_id, status, start_date, end_date, no_of_tenants) VALUES (10000,2000,'Confirmed',DATE '2025-09-01',DATE '2026-08-31',1);
INSERT INTO HMS_ADMIN.BOOKING (tenant_id, property_id, status, start_date, end_date, no_of_tenants) VALUES (10001,2001,'Confirmed',DATE '2025-08-15',DATE '2026-08-14',2);
INSERT INTO HMS_ADMIN.BOOKING (tenant_id, property_id, status, start_date, end_date, no_of_tenants) VALUES (10002,2003,'Pending',DATE '2026-01-15',DATE '2026-12-31',3);
INSERT INTO HMS_ADMIN.BOOKING (tenant_id, property_id, status, start_date, end_date, no_of_tenants) VALUES (10003,2002,'Confirmed',DATE '2025-07-01',DATE '2026-06-30',1);
INSERT INTO HMS_ADMIN.BOOKING (tenant_id, property_id, status, start_date, end_date, no_of_tenants) VALUES (10004,2004,'Cancelled',DATE '2025-09-01',DATE '2026-05-31',1);
INSERT INTO HMS_ADMIN.BOOKING (tenant_id, property_id, status, start_date, end_date, no_of_tenants) VALUES (10005,2005,'Confirmed',DATE '2025-06-01',DATE '2026-05-31',1);
INSERT INTO HMS_ADMIN.BOOKING (tenant_id, property_id, status, start_date, end_date, no_of_tenants) VALUES (10006,2006,'Confirmed',DATE '2025-05-15',DATE '2026-05-14',4);
INSERT INTO HMS_ADMIN.BOOKING (tenant_id, property_id, status, start_date, end_date, no_of_tenants) VALUES (10007,2007,'Pending',DATE '2025-10-01',DATE '2026-09-30',1);
INSERT INTO HMS_ADMIN.BOOKING (tenant_id, property_id, status, start_date, end_date, no_of_tenants) VALUES (10008,2008,'Confirmed',DATE '2025-04-01',DATE '2026-03-31',2);
INSERT INTO HMS_ADMIN.BOOKING (tenant_id, property_id, status, start_date, end_date, no_of_tenants) VALUES (10009,2009,'Confirmed',DATE '2025-08-01',DATE '2026-07-31',3);
INSERT INTO HMS_ADMIN.BOOKING (tenant_id, property_id, status, start_date, end_date, no_of_tenants) VALUES (10010,2010,'Cancelled',DATE '2025-09-15',DATE '2025-12-31',1);
INSERT INTO HMS_ADMIN.BOOKING (tenant_id, property_id, status, start_date, end_date, no_of_tenants) VALUES (10011,2011,'Confirmed',DATE '2025-03-01',DATE '2026-02-28',1);
INSERT INTO HMS_ADMIN.BOOKING (tenant_id, property_id, status, start_date, end_date, no_of_tenants) VALUES (10002,2000,'Pending',DATE '2025-12-01',DATE '2026-11-30',1);
INSERT INTO HMS_ADMIN.BOOKING (tenant_id, property_id, status, start_date, end_date, no_of_tenants) VALUES (10003,2001,'Confirmed',DATE '2025-10-15',DATE '2026-10-14',2);
INSERT INTO HMS_ADMIN.BOOKING (tenant_id, property_id, status, start_date, end_date, no_of_tenants) VALUES (10004,2002,'Confirmed',DATE '2025-11-01',DATE '2026-10-31',1);
COMMIT;

-- ===========================
-- TOURS (15)
-- ===========================
-- Inserting data into Tours table while connecting as an HMS_OPERATOR.
INSERT INTO HMS_ADMIN.TOUR (broker_id, tenant_id, property_id, visit_date, feedback, reason, outcome) VALUES (100,10000,2000,DATE '2025-08-28','Interested','Perfect location near campus and great natural light','Booking confirmed');
INSERT INTO HMS_ADMIN.TOUR (broker_id, tenant_id, property_id, visit_date, feedback, reason, outcome) VALUES (101,10001,2001,DATE '2025-08-10','Interested','Spacious layout and good for roommates','Booking confirmed');
INSERT INTO HMS_ADMIN.TOUR (broker_id, tenant_id, property_id, visit_date, feedback, reason, outcome) VALUES (102,10002,2003,DATE '2025-09-05','Still deciding','Need to compare with other options in the area','Follow-up scheduled');
INSERT INTO HMS_ADMIN.TOUR (broker_id, tenant_id, property_id, visit_date, feedback, reason, outcome) VALUES (103,10003,2002,DATE '2025-06-20','Interested','Walking distance to Harvard Square','Added to wishlist');
INSERT INTO HMS_ADMIN.TOUR (broker_id, tenant_id, property_id, visit_date, feedback, reason, outcome) VALUES (104,10004,2004,DATE '2025-07-15','Not Interested','Rent is above budget','No further action');
INSERT INTO HMS_ADMIN.TOUR (broker_id, tenant_id, property_id, visit_date, feedback, reason, outcome) VALUES (105,10005,2005,DATE '2025-05-22','Interested','Love the building amenities and view','Booking confirmed');
INSERT INTO HMS_ADMIN.TOUR (broker_id, tenant_id, property_id, visit_date, feedback, reason, outcome) VALUES (106,10006,2006,DATE '2025-05-08','Interested','Great yard space for outdoor activities','Booking confirmed');
INSERT INTO HMS_ADMIN.TOUR (broker_id, tenant_id, property_id, visit_date, feedback, reason, outcome) VALUES (107,10007,2007,DATE '2025-04-18','Still deciding','Concerned about commute time to campus','Considering alternatives');
INSERT INTO HMS_ADMIN.TOUR (broker_id, tenant_id, property_id, visit_date, feedback, reason, outcome) VALUES (108,10008,2008,DATE '2025-03-25','Interested','Quiet neighborhood and close to T station','Booking confirmed');
INSERT INTO HMS_ADMIN.TOUR (broker_id, tenant_id, property_id, visit_date, feedback, reason, outcome) VALUES (109,10009,2009,DATE '2025-07-12','Not Interested','Layout not suitable for our needs','Declined');
INSERT INTO HMS_ADMIN.TOUR (broker_id, tenant_id, property_id, visit_date, feedback, reason, outcome) VALUES (100,10010,2010,DATE '2025-01-14','Interested','Perfect for group living arrangement','Added to wishlist');
INSERT INTO HMS_ADMIN.TOUR (broker_id, tenant_id, property_id, visit_date, feedback, reason, outcome) VALUES (101,10004,2001,DATE '2025-10-02','Still deciding','Comparing with other BU area apartments','Under review');
INSERT INTO HMS_ADMIN.TOUR (broker_id, tenant_id, property_id, visit_date, feedback, reason, outcome) VALUES (103,10002,2000,DATE '2025-09-19','Interested','Good value for the neighborhood','Added to wishlist');
INSERT INTO HMS_ADMIN.TOUR (broker_id, tenant_id, property_id, visit_date, feedback, reason, outcome) VALUES (105,10001,2004,DATE '2025-08-05','Not Interested','Commute is too long from campus','No booking');
INSERT INTO HMS_ADMIN.TOUR (broker_id, tenant_id, property_id, visit_date, feedback, reason, outcome) VALUES (102,10011,2011,DATE '2025-02-18','Interested','Close to MIT and reasonably priced','Booking confirmed');
COMMIT;
