show user;

-- Inserting data into admin table while connecting as an HMS_ADMIN. ADMINS (10)
INSERT INTO ADMIN (password, email, name, phone) VALUES ('adm1pass','admin1@housing.edu','John Admin','617-555-0001');
INSERT INTO ADMIN (password, email, name, phone) VALUES ('adm2pass','admin2@housing.edu','Sarah Admin','617-555-0002');
INSERT INTO ADMIN (password, email, name, phone) VALUES ('adm3pass','admin3@housing.edu','Michael Admin','617-555-0003');
INSERT INTO ADMIN (password, email, name, phone) VALUES ('adm4pass','admin4@housing.edu','Emma Admin','617-555-0004');
INSERT INTO ADMIN (password, email, name, phone) VALUES ('adm5pass','admin5@housing.edu','David Admin','617-555-0005');
INSERT INTO ADMIN (password, email, name, phone) VALUES ('adm6pass','admin6@housing.edu','Olivia Admin','617-555-0006');
INSERT INTO ADMIN (password, email, name, phone) VALUES ('adm7pass','admin7@housing.edu','Liam Admin','617-555-0007');
INSERT INTO ADMIN (password, email, name, phone) VALUES ('adm8pass','admin8@housing.edu','Noah Admin','617-555-0008');
INSERT INTO ADMIN (password, email, name, phone) VALUES ('adm9pass','admin9@housing.edu','Ava Admin','617-555-0009');
INSERT INTO ADMIN (password, email, name, phone) VALUES ('adm10pass','admin10@housing.edu','Sophia Admin','617-555-0010');

-- OWNERS (10)
INSERT INTO OWNER (admin_id, name, email, phone, deed_document_number, verified_status) VALUES (1,'James Peterson','jpeterson@gmail.com','617-555-2001','D-1001','Verified');
INSERT INTO OWNER (admin_id, name, email, phone, deed_document_number, verified_status) VALUES (2,'Linda Chen','lchen@gmail.com','617-555-2002','D-1002','Verified');
INSERT INTO OWNER (admin_id, name, email, phone, deed_document_number, verified_status) VALUES (3,'Christopher Davis','cdavis@gmail.com','617-555-2003','D-1003','Pending');
INSERT INTO OWNER (admin_id, name, email, phone, deed_document_number, verified_status) VALUES (4,'Patricia Martinez','pmartinez@gmail.com','617-555-2004','D-1004','Verified');
INSERT INTO OWNER (admin_id, name, email, phone, deed_document_number, verified_status) VALUES (5,'Thomas Anderson','tanderson@gmail.com','617-555-2005','D-1005','Not Verified');
INSERT INTO OWNER (admin_id, name, email, phone, deed_document_number, verified_status) VALUES (6,'Olivia Brown','obrown@gmail.com','617-555-2006','D-1006','Verified');
INSERT INTO OWNER (admin_id, name, email, phone, deed_document_number, verified_status) VALUES (7,'Daniel Green','dgreen@gmail.com','617-555-2007','D-1007','Verified');
INSERT INTO OWNER (admin_id, name, email, phone, deed_document_number, verified_status) VALUES (8,'Sanjay Kumar','skumar@gmail.com','617-555-2008','D-1008','Pending');
INSERT INTO OWNER (admin_id, name, email, phone, deed_document_number, verified_status) VALUES (9,'Hannah Lee','hlee@gmail.com','617-555-2009','D-1009','Verified');
INSERT INTO OWNER (admin_id, name, email, phone, deed_document_number, verified_status) VALUES (10,'Grace Kim','gkim@gmail.com','617-555-2010','D-1010','Verified');

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
