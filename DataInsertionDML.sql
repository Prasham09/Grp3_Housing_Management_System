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

-- ===========================
-- BOOKING (15)
-- ===========================
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