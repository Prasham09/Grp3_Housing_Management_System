
-- Drop tables safely
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
