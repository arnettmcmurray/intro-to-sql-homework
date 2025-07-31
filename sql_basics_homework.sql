-- Q1: Count users with 'travel' in their bio
SELECT COUNT(*) FROM users WHERE bio ILIKE '%travel%';

-- Q2: Count posts created between May 1 and May 10, 2023
SELECT COUNT(*) FROM posts WHERE created_at BETWEEN '2023-05-01' AND '2023-05-10';

-- Q3: Return user_id with the most comments
SELECT user_id, COUNT(*) AS comment_count 
FROM comments 
GROUP BY user_id 
ORDER BY comment_count DESC 
LIMIT 1;

-- Q4: Count users whose usernames end with 'er'
SELECT COUNT(*) FROM users WHERE username ILIKE '%er';

-- Q5: Return post_id with the most comments
SELECT post_id, COUNT(*) AS comment_count 
FROM comments 
GROUP BY post_id 
ORDER BY comment_count DESC 
LIMIT 1;

-- Q6: Count distinct user_ids who have posted
SELECT COUNT(DISTINCT user_id) FROM posts;

-- Q7: Return user_id with the most followers
SELECT followed_id AS user_id, COUNT(*) AS followers_count 
FROM followers 
GROUP BY followed_id 
ORDER BY followers_count DESC 
LIMIT 1;

-- Q8: Count users joined in Feb 2023 with 'john' in username
SELECT COUNT(*) 
FROM users 
WHERE join_date BETWEEN '2023-02-01' AND '2023-02-28 23:59:59'
  AND username ILIKE '%john%';

-- Q9: Count users joined in Mar 2023 with 'mar' in username
SELECT COUNT(*) 
FROM users 
WHERE join_date BETWEEN '2023-03-01' AND '2023-03-31 23:59:59'
  AND username ILIKE '%mar%';

-- Q10: Return post_id with the most reactions
SELECT post_id, COUNT(*) AS reaction_count 
FROM reactions 
GROUP BY post_id 
ORDER BY reaction_count DESC 
LIMIT 1;
