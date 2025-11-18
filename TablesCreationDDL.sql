
-- Drop tables safely
BEGIN EXECUTE IMMEDIATE 'DROP TABLE BOOKING CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN NULL; END;
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