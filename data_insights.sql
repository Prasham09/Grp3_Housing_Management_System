-- TESTS

-- Find brokers with their total bookings, average property rent, and conversion rate from tours to bookings.
-- Broker Performance Analysis (Joins: BROKER, ADMIN, PROPERTY, BOOKING, TOUR)
-- Improved Broker Performance - Any booking by a student who toured with this broker
SELECT 
    b.broker_id,
    b.name AS broker_name,
    a.name AS admin_supervisor,
    COUNT(DISTINCT bk.booking_id) AS total_bookings,
    COUNT(DISTINCT t.tour_id) AS total_tours,
    ROUND(COUNT(DISTINCT bk.booking_id) * 100.0 / NULLIF(COUNT(DISTINCT t.tour_id), 0), 2) AS conversion_rate_pct,
    ROUND(AVG(p.rent), 2) AS avg_property_rent,
    COUNT(DISTINCT bp.property_id) AS properties_managed
FROM HMS_ADMIN.BROKER b
LEFT JOIN HMS_ADMIN.ADMIN a ON b.admin_id = a.admin_id
LEFT JOIN HMS_ADMIN.TOUR t ON b.broker_id = t.broker_id
LEFT JOIN HMS_ADMIN.BOOKING bk ON t.tenant_id = bk.tenant_id  -- Only match on tenant
LEFT JOIN HMS_ADMIN.BROKER_PROPERTY bp ON b.broker_id = bp.broker_id AND bp.is_active = 'Y'
LEFT JOIN HMS_ADMIN.PROPERTY p ON bp.property_id = p.property_id
GROUP BY b.broker_id, b.name, a.name
ORDER BY total_bookings DESC, conversion_rate_pct DESC;

-- Analyze which property types and cities students from different universities prefer.
-- Student Preferences Analysis (Joins: STUDENT, WISHLIST, PROPERTY, OWNER)
SELECT 
    s.university,
    p.city,
    p.type AS property_type,
    COUNT(DISTINCT w.tenant_id) AS students_interested,
    ROUND(AVG(p.rent), 2) AS avg_rent,
    COUNT(DISTINCT p.property_id) AS unique_properties,
    ROUND(AVG(EXTRACT(YEAR FROM SYSDATE) - EXTRACT(YEAR FROM s.dob)), 1) AS avg_student_age
FROM HMS_ADMIN.STUDENT s
INNER JOIN HMS_ADMIN.WISHLIST w ON s.tenant_id = w.tenant_id
INNER JOIN HMS_ADMIN.PROPERTY p ON w.property_id = p.property_id
INNER JOIN HMS_ADMIN.OWNER o ON p.owner_id = o.owner_id
WHERE o.verified_status = 'Verified'
GROUP BY s.university, p.city, p.type
HAVING COUNT(DISTINCT w.tenant_id) >= 1
ORDER BY s.university, students_interested DESC;


-- Show property occupancy status with owner details and potential annual revenue.
-- Property Revenue Analysis (Joins: PROPERTY, OWNER, ADMIN, BOOKING, BROKER)
SELECT 
    p.property_id,
    p.title,
    p.city,
    p.type,
    o.name AS owner_name,
    o.verified_status,
    a.name AS admin_contact,
    b.name AS current_broker,
    p.rent AS monthly_rent,
    p.rent * 12 AS annual_revenue_potential,
    p.availability_status,
    COUNT(bk.booking_id) AS total_bookings,
    SUM(CASE WHEN bk.status = 'Confirmed' THEN 1 ELSE 0 END) AS confirmed_bookings,
    MAX(bk.end_date) AS latest_lease_end
FROM HMS_ADMIN.PROPERTY p
INNER JOIN HMS_ADMIN.OWNER o ON p.owner_id = o.owner_id
LEFT JOIN HMS_ADMIN.ADMIN a ON o.admin_id = a.admin_id
LEFT JOIN HMS_ADMIN.BROKER b ON p.broker_id = b.broker_id
LEFT JOIN HMS_ADMIN.BOOKING bk ON p.property_id = bk.property_id
GROUP BY p.property_id, p.title, p.city, p.type, o.name, o.verified_status, 
         a.name, b.name, p.rent, p.availability_status
ORDER BY annual_revenue_potential DESC;


-- Track the complete journey from tour to booking with reasons for drop-offs.
-- Tour Conversion Funnel (Joins: TOUR, STUDENT, PROPERTY, BROKER, BOOKING)
SELECT 
    t.property_id,
    p.title AS property_name,
    p.city,
    b.name AS broker_name,
    COUNT(DISTINCT t.tour_id) AS total_tours,
    SUM(CASE WHEN t.feedback = 'Interested' THEN 1 ELSE 0 END) AS interested_count,
    SUM(CASE WHEN t.feedback = 'Not Interested' THEN 1 ELSE 0 END) AS not_interested_count,
    SUM(CASE WHEN t.feedback = 'Still deciding' THEN 1 ELSE 0 END) AS deciding_count,
    COUNT(DISTINCT bk.booking_id) AS total_bookings,
    ROUND(COUNT(DISTINCT bk.booking_id) * 100.0 / NULLIF(COUNT(DISTINCT t.tour_id), 0), 2) AS booking_conversion_rate,
    LISTAGG(DISTINCT CASE WHEN t.feedback = 'Not Interested' THEN t.reason END, '; ') 
        WITHIN GROUP (ORDER BY t.tour_id) AS rejection_reasons
FROM HMS_ADMIN.TOUR t
INNER JOIN HMS_ADMIN.PROPERTY p ON t.property_id = p.property_id
INNER JOIN HMS_ADMIN.BROKER b ON t.broker_id = b.broker_id
LEFT JOIN HMS_ADMIN.BOOKING bk ON t.tenant_id = bk.tenant_id AND t.property_id = bk.property_id
GROUP BY t.property_id, p.title, p.city, b.name
HAVING COUNT(DISTINCT t.tour_id) >= 2
ORDER BY booking_conversion_rate DESC, total_tours DESC;


-- Calculate engagement score based on wishlists, tours, and bookings.
-- Student Engagement Analysis (Joins: STUDENT, WISHLIST, TOUR, BOOKING, PROPERTY)
SELECT 
    s.tenant_id,
    s.name,
    s.email,
    s.university,
    s.preferred_city,
    COUNT(DISTINCT w.property_id) AS properties_wishlisted,
    COUNT(DISTINCT t.property_id) AS properties_toured,
    COUNT(DISTINCT bk.property_id) AS properties_booked,
    -- Engagement Score: Wishlist(1pt) + Tour(3pts) + Booking(5pts)
    (COUNT(DISTINCT w.property_id) * 1 + 
     COUNT(DISTINCT t.property_id) * 3 + 
     COUNT(DISTINCT bk.property_id) * 5) AS engagement_score,
    ROUND(AVG(p.rent), 2) AS avg_budget_range,
    MAX(t.visit_date) AS last_tour_date,
    MAX(bk.created_at) AS last_booking_date,
    CASE 
        WHEN MAX(bk.booking_id) IS NOT NULL THEN 'Active Tenant'
        WHEN MAX(t.tour_id) IS NOT NULL THEN 'Tour Completed'
        WHEN MAX(w.wishlist_id) IS NOT NULL THEN 'Browsing'
        ELSE 'Inactive'
    END AS student_status
FROM HMS_ADMIN.STUDENT s
LEFT JOIN HMS_ADMIN.WISHLIST w ON s.tenant_id = w.tenant_id
LEFT JOIN HMS_ADMIN.TOUR t ON s.tenant_id = t.tenant_id
LEFT JOIN HMS_ADMIN.BOOKING bk ON s.tenant_id = bk.tenant_id
LEFT JOIN HMS_ADMIN.PROPERTY p ON w.property_id = p.property_id OR t.property_id = p.property_id
GROUP BY s.tenant_id, s.name, s.email, s.university, s.preferred_city
ORDER BY engagement_score DESC, last_booking_date DESC;


-- Compare property pricing within neighborhoods to identify over/under-priced listings.
-- Neighborhood Price Analysis (Joins: PROPERTY, OWNER, BROKER, BOOKING)
SELECT 
    p.city,
    p.type,
    p.property_id,
    p.title,
    p.rent,
    ROUND(AVG(p.rent) OVER (PARTITION BY p.city, p.type), 2) AS avg_city_type_rent,
    ROUND((p.rent - AVG(p.rent) OVER (PARTITION BY p.city, p.type)) / 
          AVG(p.rent) OVER (PARTITION BY p.city, p.type) * 100, 2) AS price_variance_pct,
    o.name AS owner_name,
    b.name AS broker_name,
    COUNT(bk.booking_id) AS booking_count,
    p.availability_status,
    CASE 
        WHEN p.rent > AVG(p.rent) OVER (PARTITION BY p.city, p.type) * 1.15 THEN 'Above Market'
        WHEN p.rent < AVG(p.rent) OVER (PARTITION BY p.city, p.type) * 0.85 THEN 'Below Market'
        ELSE 'Market Rate'
    END AS pricing_category
FROM HMS_ADMIN.PROPERTY p
INNER JOIN HMS_ADMIN.OWNER o ON p.owner_id = o.owner_id
LEFT JOIN HMS_ADMIN.BROKER b ON p.broker_id = b.broker_id
LEFT JOIN HMS_ADMIN.BOOKING bk ON p.property_id = bk.property_id
GROUP BY p.city, p.type, p.property_id, p.title, p.rent, o.name, b.name, p.availability_status
ORDER BY p.city, p.type, price_variance_pct DESC;



