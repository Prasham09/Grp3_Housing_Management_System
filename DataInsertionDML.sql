show user;

-- Delete from child tables first
DELETE FROM HMS_ADMIN.TOUR;
DELETE FROM HMS_ADMIN.BOOKING;
DELETE FROM HMS_ADMIN.WISHLIST;
DELETE FROM BROKER_PROPERTY;

-- Delete from intermediate tables
DELETE FROM PROPERTY;
DELETE FROM HMS_ADMIN.STUDENT;

-- Delete from parent tables
DELETE FROM BROKER;
DELETE FROM HMS_ADMIN.OWNER;
DELETE FROM HMS_ADMIN.ADMIN;

-- Inserting data into admin table while connecting as an HMS_ADMIN. ADMINS (10)
INSERT INTO HMS_ADMIN.ADMIN (password, email, name, phone) VALUES ('adm1pass','admin1@housing.edu','John Admin','617-555-0001');
INSERT INTO HMS_ADMIN.ADMIN (password, email, name, phone) VALUES ('adm2pass','admin2@housing.edu','Sarah Admin','617-555-0002');
INSERT INTO HMS_ADMIN.ADMIN (password, email, name, phone) VALUES ('adm3pass','admin3@housing.edu','Michael Admin','617-555-0003');
INSERT INTO HMS_ADMIN.ADMIN (password, email, name, phone) VALUES ('adm4pass','admin4@housing.edu','Emma Admin','617-555-0004');
INSERT INTO HMS_ADMIN.ADMIN (password, email, name, phone) VALUES ('adm5pass','admin5@housing.edu','David Admin','617-555-0005');
INSERT INTO HMS_ADMIN.ADMIN (password, email, name, phone) VALUES ('adm6pass','admin6@housing.edu','Olivia Admin','617-555-0006');
INSERT INTO HMS_ADMIN.ADMIN (password, email, name, phone) VALUES ('adm7pass','admin7@housing.edu','Liam Admin','617-555-0007');
INSERT INTO HMS_ADMIN.ADMIN (password, email, name, phone) VALUES ('adm8pass','admin8@housing.edu','Noah Admin','617-555-0008');
INSERT INTO HMS_ADMIN.ADMIN (password, email, name, phone) VALUES ('adm9pass','admin9@housing.edu','Ava Admin','617-555-0009');
INSERT INTO HMS_ADMIN.ADMIN (password, email, name, phone) VALUES ('adm10pass','admin10@housing.edu','Sophia Admin','617-555-0010');

-- BROKERS (10) - assign admin_id values 1..10
INSERT INTO BROKER (admin_id, name, email, phone, broker_license_number) VALUES (1,'Michael Roberts','mroberts@bostonbrokers.com','617-555-1001','LIC-1001');
INSERT INTO BROKER (admin_id, name, email, phone, broker_license_number) VALUES (2,'Jennifer Lee','jlee@bostonbrokers.com','617-555-1002','LIC-1002');
INSERT INTO BROKER (admin_id, name, email, phone, broker_license_number) VALUES (3,'David Chang','dchang@bostonbrokers.com','617-555-1003','LIC-1003');
INSERT INTO BROKER (admin_id, name, email, phone, broker_license_number) VALUES (4,'Maria Gonzalez','mgonzalez@bostonbrokers.com','617-555-1004','LIC-1004');
INSERT INTO BROKER (admin_id, name, email, phone, broker_license_number) VALUES (5,'Robert Williams','rwilliams@bostonbrokers.com','617-555-1005','LIC-1005');
INSERT INTO BROKER (admin_id, name, email, phone, broker_license_number) VALUES (6,'Aisha Khan','akhan@bostonbrokers.com','617-555-1006','LIC-1006');
INSERT INTO BROKER (admin_id, name, email, phone, broker_license_number) VALUES (7,'Carlos Romano','cromano@bostonbrokers.com','617-555-1007','LIC-1007');
INSERT INTO BROKER (admin_id, name, email, phone, broker_license_number) VALUES (8,'Priya Patel','ppetel@bostonbrokers.com','617-555-1008','LIC-1008');
INSERT INTO BROKER (admin_id, name, email, phone, broker_license_number) VALUES (9,'Liam O''Connor','loconnor@bostonbrokers.com','617-555-1009','LIC-1009');
INSERT INTO BROKER (admin_id, name, email, phone, broker_license_number) VALUES (10,'Emily Park','epark@bostonbrokers.com','617-555-1010','LIC-1010');

-- OWNERS (10)
INSERT INTO HMS_ADMIN.OWNER (admin_id, name, email, phone, deed_document_number, verified_status) VALUES (1,'James Peterson','jpeterson@gmail.com','617-555-2001','D-1001','Verified');
INSERT INTO HMS_ADMIN.OWNER (admin_id, name, email, phone, deed_document_number, verified_status) VALUES (2,'Linda Chen','lchen@gmail.com','617-555-2002','D-1002','Verified');
INSERT INTO HMS_ADMIN.OWNER (admin_id, name, email, phone, deed_document_number, verified_status) VALUES (3,'Christopher Davis','cdavis@gmail.com','617-555-2003','D-1003','Pending');
INSERT INTO HMS_ADMIN.OWNER (admin_id, name, email, phone, deed_document_number, verified_status) VALUES (4,'Patricia Martinez','pmartinez@gmail.com','617-555-2004','D-1004','Verified');
INSERT INTO HMS_ADMIN.OWNER (admin_id, name, email, phone, deed_document_number, verified_status) VALUES (5,'Thomas Anderson','tanderson@gmail.com','617-555-2005','D-1005','Not Verified');
INSERT INTO HMS_ADMIN.OWNER (admin_id, name, email, phone, deed_document_number, verified_status) VALUES (6,'Olivia Brown','obrown@gmail.com','617-555-2006','D-1006','Verified');
INSERT INTO HMS_ADMIN.OWNER (admin_id, name, email, phone, deed_document_number, verified_status) VALUES (7,'Daniel Green','dgreen@gmail.com','617-555-2007','D-1007','Verified');
INSERT INTO HMS_ADMIN.OWNER (admin_id, name, email, phone, deed_document_number, verified_status) VALUES (8,'Sanjay Kumar','skumar@gmail.com','617-555-2008','D-1008','Pending');
INSERT INTO HMS_ADMIN.OWNER (admin_id, name, email, phone, deed_document_number, verified_status) VALUES (9,'Hannah Lee','hlee@gmail.com','617-555-2009','D-1009','Verified');
INSERT INTO HMS_ADMIN.OWNER (admin_id, name, email, phone, deed_document_number, verified_status) VALUES (10,'Grace Kim','gkim@gmail.com','617-555-2010','D-1010','Verified');

-- PROPERTIES (12) - varied neighborhoods & near universities
INSERT INTO PROPERTY (owner_id, broker_id, title, address, city, rent, availability_status, type, description, amenities)
VALUES (1,1,'Cozy Studio - Back Bay','234 Newbury St, Back Bay, Boston','Boston',2200.00,'Available','Studio','Modern studio with city views','WiFi,Laundry,Heating');

INSERT INTO PROPERTY (owner_id, broker_id, title, address, city, rent, availability_status, type, description, amenities)
VALUES (1,2,'2BR Near BU Campus','567 Commonwealth Ave, Fenway','Boston',3500.00,'Available','2 Bedroom','Spacious apt near Boston University','Parking,WiFi,Dishwasher');

INSERT INTO PROPERTY (owner_id, broker_id, title, address, city, rent, availability_status, type, description, amenities)
VALUES (2,3,'1BR Cambridge - Near Harvard','89 Harvard St, Cambridge','Cambridge',2800.00,'Available','1 Bedroom','Renovated apt near Harvard Square','AC,Heating,Hardwood floors');

INSERT INTO PROPERTY (owner_id, broker_id, title, address, city, rent, availability_status, type, description, amenities)
VALUES (3,4,'Shared 3BR Allston - Student','145 Brighton Ave, Allston','Boston',1400.00,'Available','3 Bedroom','Rooms suitable for students, near public transit','Laundry,WiFi,Storage');

INSERT INTO PROPERTY (owner_id, broker_id, title, address, city, rent, availability_status, type, description, amenities)
VALUES (4,5,'Luxury 2BR Seaport','777 Seaport Blvd, Seaport','Boston',4500.00,'Occupied','2 Bedroom','Waterfront luxury living','Gym,Pool,Concierge');

INSERT INTO PROPERTY (owner_id, broker_id, title, address, city, rent, availability_status, type, description, amenities)
VALUES (5,6,'Studio - Fenway/Kenmore','12 Ipswich St, Fenway','Boston',2000.00,'Available','Studio','Compact studio, walk to campus','WiFi,Heat');

INSERT INTO PROPERTY (owner_id, broker_id, title, address, city, rent, availability_status, type, description, amenities)
VALUES (6,7,'3BR Family Home - Brookline','45 Beacon St, Brookline','Brookline',4200.00,'Available','3 Bedroom','Lovely family house near shops','Garage,Backyard');

INSERT INTO PROPERTY (owner_id, broker_id, title, address, city, rent, availability_status, type, description, amenities)
VALUES (7,8,'1BR Near Tufts','10 College Ave, Medford','Medford',2300.00,'Available','1 Bedroom','Close to Tufts University','Parking,Heat,WiFi');

INSERT INTO PROPERTY (owner_id, broker_id, title, address, city, rent, availability_status, type, description, amenities)
VALUES (8,9,'2BR - Somerville','200 Highland Ave, Somerville','Somerville',3100.00,'Available','2 Bedroom','Nice neighborhood, short commute','Laundry,AC');

INSERT INTO PROPERTY (owner_id, broker_id, title, address, city, rent, availability_status, type, description, amenities)
VALUES (9,10,'4BR House - Jamaica Plain','88 Centre St, Jamaica Plain','Boston',3800.00,'Available','4 Bedroom','Spacious house for groups','Yard,Storage');

INSERT INTO PROPERTY (owner_id, broker_id, title, address, city, rent, availability_status, type, description, amenities)
VALUES (10,1,'1BR Mid-Cambridge','123 Mass Ave, Cambridge','Cambridge',2500.00,'Available','1 Bedroom','Small, quiet building','Heat,Water included');

INSERT INTO PROPERTY (owner_id, broker_id, title, address, city, rent, availability_status, type, description, amenities)
VALUES (5,2,'Studio - Near Northeastern','40 St. Botolph St, Fenway','Boston',2100.00,'Available','Studio','Close to Northeastern University','WiFi,Close to transit');

-- ===========================
-- BROKER_PROPERTY (25)
-- ===========================
INSERT INTO BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (1,1,DATE '2024-01-15','N');
INSERT INTO BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (2,1,DATE '2024-02-01','N');
INSERT INTO BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (1,1,DATE '2025-01-15','Y');
INSERT INTO BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (2,2,DATE '2024-05-10','N');
INSERT INTO BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (3,2,DATE '2024-06-01','Y');
INSERT INTO BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (3,3,DATE '2024-02-20','Y');
INSERT INTO BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (4,4,DATE '2023-09-01','N');
INSERT INTO BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (5,4,DATE '2024-03-01','Y');
INSERT INTO BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (6,5,DATE '2024-04-10','N');
INSERT INTO BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (7,5,DATE '2024-06-15','N');
INSERT INTO BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (5,5,DATE '2025-02-10','Y');
INSERT INTO BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (8,6,DATE '2024-07-01','Y');
INSERT INTO BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (9,7,DATE '2024-08-05','Y');
INSERT INTO BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (10,8,DATE '2024-09-15','Y');
INSERT INTO BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (2,9,DATE '2024-10-02','Y');
INSERT INTO BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (1,10,DATE '2025-01-04','Y');
INSERT INTO BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (3,11,DATE '2024-03-22','Y');
INSERT INTO BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (4,12,DATE '2024-02-12','Y');
INSERT INTO BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (5,6,DATE '2023-12-01','N');
INSERT INTO BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (6,7,DATE '2023-11-11','N');
INSERT INTO BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (7,8,DATE '2024-01-10','N');
INSERT INTO BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (8,9,DATE '2024-05-05','N');
INSERT INTO BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (9,10,DATE '2024-06-06','N');
INSERT INTO BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (10,11,DATE '2024-07-07','N');
INSERT INTO BROKER_PROPERTY (broker_id, property_id, assigned_date, is_active) VALUES (1,12,DATE '2025-02-10','Y');

-- ===========================
-- STUDENTS (12)
-- ===========================
INSERT INTO HMS_ADMIN.STUDENT (name, email, phone, university, preferred_city, dob, gender, student_id_type) VALUES ('Arjun Patel','arjun.patel@northeastern.edu','781-402-8831','Northeastern University','Boston',DATE '1999-04-12','Male','I-20');
INSERT INTO HMS_ADMIN.STUDENT (name, email, phone, university, preferred_city, dob, gender, student_id_type) VALUES ('Maria Santos','maria.santos@bu.edu','508-221-9942','Boston University','Boston',DATE '1998-09-10','Female','State ID');
INSERT INTO HMS_ADMIN.STUDENT (name, email, phone, university, preferred_city, dob, gender, student_id_type) VALUES ('Wei Zhang','wei.zhang@harvard.edu','646-881-2301','Harvard University','Cambridge',DATE '1990-06-28','Male','US Passport');
INSERT INTO HMS_ADMIN.STUDENT (name, email, phone, university, preferred_city, dob, gender, student_id_type) VALUES ('Sara Al-Masri','sara.almasri@tufts.edu','201-992-7400','Tufts University','Medford',DATE '1996-12-02','Female','I-20');
INSERT INTO HMS_ADMIN.STUDENT (name, email, phone, university, preferred_city, dob, gender, student_id_type) VALUES ('Daniel Kim','daniel.kim@northeastern.edu','774-317-0045','Northeastern University','Boston',DATE '2001-05-14','Male','State ID');
INSERT INTO HMS_ADMIN.STUDENT (name, email, phone, university, preferred_city, dob, gender, student_id_type) VALUES ('Olivia Chen','olivia.chen@harvard.edu','617-555-3344','Harvard University','Cambridge',DATE '2002-03-22','Female','US Passport');
INSERT INTO HMS_ADMIN.STUDENT (name, email, phone, university, preferred_city, dob, gender, student_id_type) VALUES ('Mark Johnson','mark.johnson@bu.edu','857-555-4433','Boston University','Boston',DATE '1997-11-11','Male','State ID');
INSERT INTO HMS_ADMIN.STUDENT (name, email, phone, university, preferred_city, dob, gender, student_id_type) VALUES ('Anita Singh','anita.singh@tufts.edu','781-555-9900','Tufts University','Medford',DATE '1998-02-02','Female','I-20');
INSERT INTO HMS_ADMIN.STUDENT (name, email, phone, university, preferred_city, dob, gender, student_id_type) VALUES ('Liam Brown','liam.brown@northeastern.edu','617-555-1212','Northeastern University','Boston',DATE '2000-07-07','Male','State ID');
INSERT INTO HMS_ADMIN.STUDENT (name, email, phone, university, preferred_city, dob, gender, student_id_type) VALUES ('Zoe Miller','zoe.miller@bc.edu','617-555-1313','Boston College','Chestnut Hill',DATE '1999-12-12','Female','State ID');
INSERT INTO HMS_ADMIN.STUDENT (name, email, phone, university, preferred_city, dob, gender, student_id_type) VALUES ('Pedro Alvarez','pedro.alvarez@umass.edu','978-555-2222','UMass Boston','Boston',DATE '1996-05-06','Male','US Passport');
INSERT INTO HMS_ADMIN.STUDENT (name, email, phone, university, preferred_city, dob, gender, student_id_type) VALUES ('Nina Gupta','nina.gupta@mit.edu','617-555-1414','MIT','Cambridge',DATE '2003-01-01','Female','US Passport');

-- ===========================
-- WISHLIST (20)
-- ===========================
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (1,1,DATE '2025-09-01');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (1,3,DATE '2025-09-02');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (2,2,DATE '2025-09-03');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (3,4,DATE '2025-09-04');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (4,3,DATE '2025-09-05');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (5,6,DATE '2025-08-10');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (6,11,DATE '2025-07-20');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (7,8,DATE '2025-06-11');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (8,7,DATE '2025-05-01');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (9,5,DATE '2025-04-22');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (10,9,DATE '2025-03-13');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (11,12,DATE '2025-02-02');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (12,10,DATE '2025-01-15');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (2,11,DATE '2025-09-08');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (3,1,DATE '2025-09-09');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (4,2,DATE '2025-09-10');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (5,3,DATE '2025-09-11');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (6,4,DATE '2025-09-12');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (7,5,DATE '2025-09-13');
INSERT INTO HMS_ADMIN.WISHLIST (tenant_id, property_id, date_added) VALUES (8,6,DATE '2025-09-14');

-- ===========================
-- BOOKING (15)
-- ===========================
-- Inserting data into Booking table while connecting as an HMS_OPERATOR.
INSERT INTO HMS_ADMIN.BOOKING (tenant_id, property_id, status, start_date, end_date, no_of_tenants) VALUES (1,1,'Confirmed',DATE '2025-09-01',DATE '2026-08-31',1);
INSERT INTO HMS_ADMIN.BOOKING (tenant_id, property_id, status, start_date, end_date, no_of_tenants) VALUES (2,2,'Confirmed',DATE '2025-09-01',DATE '2026-08-31',2);
INSERT INTO HMS_ADMIN.BOOKING (tenant_id, property_id, status, start_date, end_date, no_of_tenants) VALUES (3,4,'Pending',DATE '2026-01-01',DATE '2026-12-31',3);
INSERT INTO HMS_ADMIN.BOOKING (tenant_id, property_id, status, start_date, end_date, no_of_tenants) VALUES (4,3,'Confirmed',DATE '2025-08-15',DATE '2026-08-14',1);
INSERT INTO HMS_ADMIN.BOOKING (tenant_id, property_id, status, start_date, end_date, no_of_tenants) VALUES (5,5,'Cancelled',DATE '2025-09-01',DATE '2026-08-31',1);
INSERT INTO HMS_ADMIN.BOOKING (tenant_id, property_id, status, start_date, end_date, no_of_tenants) VALUES (6,6,'Confirmed',DATE '2025-07-01',DATE '2026-06-30',1);
INSERT INTO HMS_ADMIN.BOOKING (tenant_id, property_id, status, start_date, end_date, no_of_tenants) VALUES (7,7,'Confirmed',DATE '2025-06-15',DATE '2026-06-14',4);
INSERT INTO HMS_ADMIN.BOOKING (tenant_id, property_id, status, start_date, end_date, no_of_tenants) VALUES (8,8,'Pending',DATE '2025-10-01',DATE '2026-09-30',1);
INSERT INTO HMS_ADMIN.BOOKING (tenant_id, property_id, status, start_date, end_date, no_of_tenants) VALUES (9,9,'Confirmed',DATE '2025-05-01',DATE '2026-04-30',2);
INSERT INTO HMS_ADMIN.BOOKING (tenant_id, property_id, status, start_date, end_date, no_of_tenants) VALUES (10,10,'Confirmed',DATE '2025-08-01',DATE '2026-07-31',3);
INSERT INTO HMS_ADMIN.BOOKING (tenant_id, property_id, status, start_date, end_date, no_of_tenants) VALUES (11,11,'Cancelled',DATE '2025-09-01',DATE '2025-12-31',1);
INSERT INTO HMS_ADMIN.BOOKING (tenant_id, property_id, status, start_date, end_date, no_of_tenants) VALUES (12,12,'Confirmed',DATE '2025-04-01',DATE '2026-03-31',1);
INSERT INTO HMS_ADMIN.BOOKING (tenant_id, property_id, status, start_date, end_date, no_of_tenants) VALUES (3,1,'Pending',DATE '2025-12-01',DATE '2026-11-30',1);
INSERT INTO HMS_ADMIN.BOOKING (tenant_id, property_id, status, start_date, end_date, no_of_tenants) VALUES (4,2,'Confirmed',DATE '2025-09-15',DATE '2026-09-14',2);
INSERT INTO HMS_ADMIN.BOOKING (tenant_id, property_id, status, start_date, end_date, no_of_tenants) VALUES (5,3,'Confirmed',DATE '2025-10-01',DATE '2026-09-30',1);


-- ===========================
-- TOURS (15)
-- ===========================
-- Inserting data into Tours table while connecting as an HMS_OPERATOR.
INSERT INTO HMS_ADMIN.TOUR (broker_id, tenant_id, property_id, visit_date, feedback, reason, outcome) VALUES (1,1,1,DATE '2025-08-15','Interested','Loved the location and amenities','Booked');
INSERT INTO HMS_ADMIN.TOUR (broker_id, tenant_id, property_id, visit_date, feedback, reason, outcome) VALUES (2,2,2,DATE '2025-08-16','Interested','Perfect size for roommates','Booked');
INSERT INTO HMS_ADMIN.TOUR (broker_id, tenant_id, property_id, visit_date, feedback, reason, outcome) VALUES (3,3,4,DATE '2025-08-17','Still deciding','Need to check other options','Pending decision');
INSERT INTO HMS_ADMIN.TOUR (broker_id, tenant_id, property_id, visit_date, feedback, reason, outcome) VALUES (4,4,3,DATE '2025-08-18','Interested','Close to campus','Added to wishlist');
INSERT INTO HMS_ADMIN.TOUR (broker_id, tenant_id, property_id, visit_date, feedback, reason, outcome) VALUES (5,5,5,DATE '2025-08-19','Not Interested','Too expensive','No booking');
INSERT INTO HMS_ADMIN.TOUR (broker_id, tenant_id, property_id, visit_date, feedback, reason, outcome) VALUES (6,6,6,DATE '2025-07-20','Interested','Great commute','Booked');
INSERT INTO HMS_ADMIN.TOUR (broker_id, tenant_id, property_id, visit_date, feedback, reason, outcome) VALUES (7,7,7,DATE '2025-06-10','Interested','Spacious','Booked');
INSERT INTO HMS_ADMIN.TOUR (broker_id, tenant_id, property_id, visit_date, feedback, reason, outcome) VALUES (8,8,8,DATE '2025-05-05','Still deciding','Neighbors looked noisy','Pending');
INSERT INTO HMS_ADMIN.TOUR (broker_id, tenant_id, property_id, visit_date, feedback, reason, outcome) VALUES (9,9,9,DATE '2025-04-22','Interested','Close to subway','Booked');
INSERT INTO HMS_ADMIN.TOUR (broker_id, tenant_id, property_id, visit_date, feedback, reason, outcome) VALUES (10,10,10,DATE '2025-03-12','Not Interested','Too small','No booking');
INSERT INTO HMS_ADMIN.TOUR (broker_id, tenant_id, property_id, visit_date, feedback, reason, outcome) VALUES (1,11,11,DATE '2025-02-02','Interested','Good for roommates','Booked');
INSERT INTO HMS_ADMIN.TOUR (broker_id, tenant_id, property_id, visit_date, feedback, reason, outcome) VALUES (2,5,2,DATE '2025-09-08','Still deciding','Compare with other units','Pending');
INSERT INTO HMS_ADMIN.TOUR (broker_id, tenant_id, property_id, visit_date, feedback, reason, outcome) VALUES (4,3,1,DATE '2025-09-09','Interested','Good deal','Added to wishlist');
INSERT INTO HMS_ADMIN.TOUR (broker_id, tenant_id, property_id, visit_date, feedback, reason, outcome) VALUES (6,2,5,DATE '2025-09-10','Not Interested','Too far','No booking');

