-- Task 1: Find all users whose usernames contain 'john'
SELECT * FROM users
WHERE username LIKE '%john%';

-- Task 2: Find all users who joined the platform in February 2023
SELECT * FROM users
WHERE strftime('%Y-%m', join_date) = '2023-02';
