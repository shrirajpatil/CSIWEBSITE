-- Retrieve all users
SELECT * FROM Users;

-- Retrieve all events
SELECT * FROM Events;

-- Retrieve all registrations (with user and event details)
SELECT r.registration_id, u.username, e.event_name, r.registration_date
FROM Registrations r
JOIN Users u ON r.user_id = u.user_id
JOIN Events e ON r.event_id = e.event_id;

-- Get event details with registered users
SELECT e.event_name, u.username
FROM Registrations r
JOIN Users u ON r.user_id = u.user_id
JOIN Events e ON r.event_id = e.event_id
ORDER BY e.event_name;
