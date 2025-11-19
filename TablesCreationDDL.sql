
-- Drop tables safely
BEGIN EXECUTE IMMEDIATE 'DROP TABLE TOUR CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE BOOKING CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE WISHLIST CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE PROPERTY CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE STUDENT CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE BROKER CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE OWNER CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE ADMIN CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
/

-- =====================================================
-- ADMIN
-- =====================================================
CREATE TABLE ADMIN (
    admin_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    password VARCHAR2(255) NOT NULL,
    email VARCHAR2(100) UNIQUE NOT NULL,
    name VARCHAR2(100) NOT NULL,
    phone VARCHAR2(15)
);
COMMENT ON TABLE ADMIN IS 'Site administrators';

-- =====================================================
-- OWNER
-- =====================================================
CREATE TABLE OWNER (
    owner_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    admin_id NUMBER,
    name VARCHAR2(100) NOT NULL,
    email VARCHAR2(100),
    phone VARCHAR2(15),
    deed_document_number VARCHAR2(50),
    verified_status VARCHAR2(20) DEFAULT 'Pending' 
        CHECK (verified_status IN ('Pending', 'Verified', 'Not Verified')),
    CONSTRAINT fk_owner_admin FOREIGN KEY (admin_id) REFERENCES ADMIN(admin_id) ON DELETE SET NULL
);
COMMENT ON TABLE OWNER IS 'Property owners';

-- =====================================================
-- BROKER
-- =====================================================
CREATE TABLE BROKER (
    broker_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    admin_id NUMBER,
    name VARCHAR2(100) NOT NULL,
    email VARCHAR2(100) UNIQUE NOT NULL,
    phone VARCHAR2(15),
    broker_license_number VARCHAR2(50),
    CONSTRAINT fk_broker_admin FOREIGN KEY (admin_id) REFERENCES ADMIN(admin_id) ON DELETE SET NULL
);
COMMENT ON TABLE BROKER IS 'Brokers / agents';

-- =====================================================
-- PROPERTY
-- =====================================================
CREATE TABLE PROPERTY (
    property_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    owner_id NUMBER NOT NULL,
    broker_id NUMBER,
    title VARCHAR2(100),
    address VARCHAR2(200) NOT NULL,
    city VARCHAR2(100) DEFAULT 'Boston',
    rent NUMBER(10,2),
    availability_status VARCHAR2(20) DEFAULT 'Available' CHECK (availability_status IN ('Available','Occupied','Maintenance','Reserved')),
    type VARCHAR2(50),
    description VARCHAR2(1000),
    amenities VARCHAR2(1000),
    CONSTRAINT fk_property_owner FOREIGN KEY (owner_id) REFERENCES OWNER(owner_id),
    CONSTRAINT fk_property_broker FOREIGN KEY (broker_id) REFERENCES BROKER(broker_id) ON DELETE SET NULL
);
COMMENT ON TABLE PROPERTY IS 'Properties listed in the system';

-- =====================================================
-- STUDENT
-- =====================================================
CREATE TABLE STUDENT (
    tenant_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR2(100) NOT NULL,
    email VARCHAR2(100) UNIQUE NOT NULL,
    phone VARCHAR2(15),
    university VARCHAR2(150),
    preferred_city VARCHAR2(100),
    dob DATE,
    gender VARCHAR2(20) CHECK (gender IN ('Male','Female','Other')),
    student_id_type VARCHAR2(50) CHECK (student_id_type IN ('I-20','Driving License','State ID','US Passport'))
);
COMMENT ON TABLE STUDENT IS 'Tenants / students';

-- =====================================================
-- WISHLIST
-- =====================================================
CREATE TABLE WISHLIST (
    wishlist_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    tenant_id NUMBER NOT NULL,
    property_id NUMBER NOT NULL,
    date_added DATE DEFAULT SYSDATE NOT NULL --,
    --CONSTRAINT fk_wish_student FOREIGN KEY (tenant_id) REFERENCES STUDENT(tenant_id) ON DELETE CASCADE,
    --CONSTRAINT fk_wish_property FOREIGN KEY (property_id) REFERENCES PROPERTY(property_id) ON DELETE CASCADE,
    --CONSTRAINT uq_wishlist_unique UNIQUE (tenant_id, property_id)
);
COMMENT ON TABLE WISHLIST IS 'Tenant wishlist';

-- =====================================================
-- BOOKING
-- =====================================================
CREATE TABLE BOOKING (
    booking_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    tenant_id NUMBER NOT NULL,
    property_id NUMBER NOT NULL,
    status VARCHAR2(20) DEFAULT 'Pending' CHECK (status IN ('Pending','Confirmed','Cancelled','Completed')),
    start_date DATE,
    end_date DATE,
    no_of_tenants NUMBER(3) DEFAULT 1 CHECK (no_of_tenants >= 1),
    created_at DATE DEFAULT SYSDATE,
    --CONSTRAINT fk_booking_student FOREIGN KEY (tenant_id) REFERENCES STUDENT(tenant_id),
    --CONSTRAINT fk_booking_property FOREIGN KEY (property_id) REFERENCES PROPERTY(property_id),
    CONSTRAINT chk_booking_dates CHECK (start_date IS NULL OR end_date IS NULL OR start_date <= end_date)
);
COMMENT ON TABLE BOOKING IS 'Bookings / leases';


-- =====================================================
-- TOUR
-- =====================================================
CREATE TABLE TOUR (
    tour_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    broker_id NUMBER,
    tenant_id NUMBER,
    property_id NUMBER NOT NULL,
    visit_date DATE,
    feedback VARCHAR2(50) CHECK (feedback IN ('Interested','Not Interested','Still deciding')),
    reason VARCHAR2(1000),
    outcome VARCHAR2(255),
    created_at DATE DEFAULT SYSDATE
    --,
    --CONSTRAINT fk_tour_broker FOREIGN KEY (broker_id) REFERENCES BROKER(broker_id) ON DELETE SET NULL,
    --CONSTRAINT fk_tour_student FOREIGN KEY (tenant_id) REFERENCES STUDENT(tenant_id) ON DELETE SET NULL,
    --CONSTRAINT fk_tour_property FOREIGN KEY (property_id) REFERENCES PROPERTY(property_id)
);
COMMENT ON TABLE TOUR IS 'Tours / viewings';