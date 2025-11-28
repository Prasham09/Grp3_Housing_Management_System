# Housing Management System Database

**DAMG 6210 - Database Management and Database Design (Fall 2025)**  
**Group 3**

## 👥 Team Members

| Name | NUID | 
|------|------| 
Prasham Nagda | 002539021 |
| Neerajaa Kadam | 002509421 |
| Tanya Bansal | 002020208 |

---

## 📋 Business Problem

Students moving to new cities for studies struggle to find affordable and verified housing. The process is scattered across multiple channels—brokers, online ads, and word-of-mouth—making it unreliable and time-consuming.

### Key Challenges
- **Fragmented Information**: Property listings scattered across multiple platforms with inconsistent data
- **Trust Issues**: Difficulty verifying legitimate property owners and brokers
- **Communication Gaps**: No centralized system for scheduling property visits and tracking applications
- **Manual Processes**: Property owners and brokers manage inquiries through emails, calls, and spreadsheets
- **Booking Confusion**: Multiple students may attempt to book the same property without real-time status updates
- **Lost Opportunities**: Students cannot efficiently track properties of interest (wishlist feature absent)

---

## 🎯 Project Objectives

1. **Centralize Housing Data**: Create a unified database to store all property listings, owners, brokers, and tenant information
2. **Streamline Booking Process**: Enable students to search, shortlist, schedule visits, and book properties through one platform
3. **Enhance Transparency**: Maintain clear records of property ownership, broker assignments, and booking status
4. **Improve Communication**: Facilitate interaction between students, brokers, and property owners
5. **Track Engagement**: Monitor property tours, feedback, and booking history

---

## 🗂️ Database Design Overview

### Entity Relationship
The database consists of 9 main entities:
- **ADMIN**: System administrators managing the platform
- **OWNER**: Property owners with verification status
- **BROKER**: Licensed real estate brokers/agents
- **PROPERTY**: Rental properties with details and availability
- **BROKER_PROPERTY**: Assignment history of brokers to properties
- **STUDENT**: Tenant/student users seeking housing
- **WISHLIST**: Students' saved properties of interest
- **BOOKING**: Confirmed/pending rental bookings
- **TOUR**: Scheduled property viewings with feedback

### Key Features
- **User Role Hierarchy**: Separate user accounts for Admin vs. Operators with appropriate privileges
- **Referential Integrity**: Foreign key constraints ensure data consistency
- **Unique ID Ranges**: 
  - ADMIN: 1-10
  - BROKER: 100-199
  - OWNER: 1000-1999
  - PROPERTY: 2000-2999
  - STUDENT: 10000+
  - Others: Start at 1
- **Normalized Design**: 3NF compliant with no redundancy

---

## 🛠️ Prerequisites

Before you begin, ensure you have:
- Oracle Database 19c or higher (Oracle Cloud or local installation)
- Oracle SQL Developer or SQL*Plus
- Administrative access to create users and schemas

---

## 📂 Project Structure

```
Housing-Management-System/
│
├── README.md                           # This file
├── ER_Diagram/
│   └── HMS_ER_Diagram.pdf             # Updated ER Diagram
│
├── Normalization_Documentation/
│   └── HMS_Normalization.pdf          # Normalization proof (1NF, 2NF, 3NF)
│
├── SQL_Scripts/
│   ├── 01_User_Setup.sql              # Run as ADMIN
│   ├── 02_DDL_Schema.sql              # Run as HMS_ADMIN
│   ├── 03_Grant_Privileges.sql        # Run as HMS_ADMIN
│   └── 04_DML_Sample_Data.sql         # Run as HMS_OPERATOR
│
└── Analysis_Queries/
    └── Business_Intelligence_Queries.sql
```

---

## 🚀 Installation & Setup Instructions

### **Step 1: Connect as Oracle ADMIN User**
- Open SQL Developer
- Connect with your Oracle ADMIN credentials (e.g., SYSTEM or cloud admin account)
- Run the script `01_User_Setup.sql`
- This will drop existing users (if any) and create two new users: **HMS_ADMIN** and **HMS_OPERATOR**
- **HMS_ADMIN** will own the schema and have privileges to create tables
- **HMS_OPERATOR** will only have session privileges (data entry user)

### **Step 2: Create New Connection for HMS_ADMIN**
- In SQL Developer, click the green **+** icon to create a new connection
- **Connection Name**: `HMS_ADMIN`
- **Username**: `HMS_ADMIN`
- **Password**: `AdminNeuBoston2025#`
- Save and Connect

### **Step 3: Run DDL Script as HMS_ADMIN**
- Make sure you're connected as **HMS_ADMIN**
- Run the script `02_DDL_Schema.sql`
- This creates all 9 tables with proper constraints, primary keys, foreign keys, and ID ranges
- Tables will be created in the correct order to respect foreign key dependencies

### **Step 4: Grant Privileges to HMS_OPERATOR**
- Still connected as **HMS_ADMIN**
- Run the script `03_Grant_Privileges.sql`
- This grants SELECT, INSERT, UPDATE, DELETE privileges on all tables to HMS_OPERATOR

### **Step 5: Create New Connection for HMS_OPERATOR**
- In SQL Developer, create another new connection
- **Connection Name**: `HMS_OPERATOR`
- **Username**: `HMS_OPERATOR`
- **Password**: `Operator#2025`
- Save and Connect

### **Step 6: Load Sample Data as HMS_OPERATOR**
- Make sure you're connected as **HMS_OPERATOR**
- Run the script `04_DML_Sample_Data.sql`
- This inserts realistic sample data into all tables (10+ records per table, 20+ for junction tables)
- Data includes varied phone numbers, realistic names, and proper foreign key relationships

### **Step 7: Verify Data Load**
- Run verification queries to ensure all data loaded correctly
- Check record counts for each table
- Verify foreign key relationships are intact

---

## 📜 SQL Scripts

### Script 1: User Setup (Run as ADMIN)

### Script 2: DDL Schema Creation (Run as HMS_ADMIN)

### Script 3: Grant Privileges (Run as HMS_ADMIN)

### Script 4: Sample Data Insert (Run as HMS_OPERATOR)


## 📊 Data Verification Query

Run this query as **HMS_OPERATOR** to verify all data loaded correctly:

```sql
-- Verify record counts
SELECT 'ADMIN' AS table_name, COUNT(*) AS row_count FROM HMS_ADMIN.ADMIN
UNION ALL
SELECT 'BROKER', COUNT(*) FROM HMS_ADMIN.BROKER
UNION ALL
SELECT 'OWNER', COUNT(*) FROM HMS_ADMIN.OWNER
UNION ALL
SELECT 'PROPERTY', COUNT(*) FROM HMS_ADMIN.PROPERTY
UNION ALL
SELECT 'BROKER_PROPERTY', COUNT(*) FROM HMS_ADMIN.BROKER_PROPERTY
UNION ALL
SELECT 'STUDENT', COUNT(*) FROM HMS_ADMIN.STUDENT
UNION ALL
SELECT 'WISHLIST', COUNT(*) FROM HMS_ADMIN.WISHLIST
UNION ALL
SELECT 'BOOKING', COUNT(*) FROM HMS_ADMIN.BOOKING
UNION ALL
SELECT 'TOUR', COUNT(*) FROM HMS_ADMIN.TOUR;
```

**Expected Output:**
```
ADMIN             10
BROKER            10
OWNER             10
PROPERTY          12
BROKER_PROPERTY   25
STUDENT           12
WISHLIST          20
BOOKING           15
TOUR              15
```

---

## 🗃️ Database Schema Details

### ID Ranges
- **ADMIN**: 1, 2, 3, ... 10
- **BROKER**: 100, 101, 102, ... 109
- **OWNER**: 1000, 1001, 1002, ... 1009
- **PROPERTY**: 2000, 2001, 2002, ... 2011
- **STUDENT**: 10000, 10001, 10002, ... 10011
- **WISHLIST, BOOKING, TOUR, BROKER_PROPERTY**: 1, 2, 3, ...

### Key Relationships
- One ADMIN can supervise multiple OWNERs and BROKERs (1:M)
- One OWNER can have multiple PROPERTYs (1:M)
- One BROKER can manage multiple PROPERTYs through BROKER_PROPERTY (M:N)
- One PROPERTY can have multiple BOOKINGs and TOURs (1:M)
- One STUDENT can have multiple WISHLISTs, BOOKINGs, and TOURs (1:M)

---

## 🔒 Security & Access Control

### User Roles

| User | Purpose | Privileges |
|------|---------|------------|
| **ADMIN** | Oracle system administrator | Create/drop users, grant privileges |
| **HMS_ADMIN** | Schema owner | Create/drop tables, grant object privileges |
| **HMS_OPERATOR** | Data entry operator | SELECT, INSERT, UPDATE, DELETE on all tables |

---

## 🚨 Troubleshooting

### Common Issues

**Issue**: `ORA-01918: user does not exist`  
**Solution**: This is expected if users don't exist yet. The script handles this gracefully.

**Issue**: `ORA-00955: name is already used by an existing object`  
**Solution**: Tables weren't fully dropped. Re-run the DROP statements in Script 2.

**Issue**: `ORA-02291: integrity constraint violated - parent key not found`  
**Solution**: Ensure data is inserted in correct order: ADMIN → BROKER/OWNER → PROPERTY → others. Follow Script 4 exactly.

**Issue**: Yellow warnings in SQL Developer  
**Solution**: These are cosmetic IDE warnings about table aliases. The SQL executes correctly.

---

## 📖 Additional Resources

- [Oracle Database Documentation](https://docs.oracle.com/en/database/)
- [SQL Developer User Guide](https://docs.oracle.com/en/database/oracle/sql-developer/)
- [Database Normalization Tutorial](https://www.guru99.com/database-normalization.html)

---

## 📧 Contact

For questions or issues, contact any team member:
- Prasham Nagda - nagda.p@northeastern.edu
- Neerajaa Kadam - kadam.ne@northeastern.edu
- Tanya Bansal - bansal.tan@northeastern.edu

---

## 📄 License

This project is submitted as part of DAMG 6210 coursework at Northeastern University.

---

**Last Updated**: November 2025  
**Database Version**: Oracle 19c+  
**Project Status**: ✅ Complete
