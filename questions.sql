-- 1. Find 5 oldest users in dataset
SELECT username, created_at
FROM users
ORDER BY created_at
LIMIT 5;

-- 2. MOST POPULAR REGISTRATION DATE
SELECT 
	DAYNAME(created_at) AS day, 
    COUNT(*) AS count 
FROM users 
GROUP BY 1
ORDER BY 2 DESC;

-- 3. Find inactive users
SELECT username, image_url
FROM users
LEFT JOIN photos
	ON users.id = photos.user_id
WHERE photos.id IS NULL;

-- 4. Most liked photo and responsible account
SELECT 
	username, 
    image_url, 
    COUNT(*) AS likes
FROM likes
JOIN photos
	ON likes.photo_id = photos.id
JOIN users
	ON photos.user_id = users.id
GROUP BY photo_id
ORDER BY likes DESC
LIMIT 10;

-- 5. How many times does the avg user post?
SELECT COUNT(*) / COUNT(DISTINCT user_id)
FROM photos;

SELECT 
	(SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users) AS avg;
    
-- 6. 5 most common hashtags
SELECT tag_name, COUNT(*) 
FROM photo_tags
JOIN tags
	ON photo_tags.tag_id = tags.id
GROUP BY tag_id
ORDER BY 2 DESC
LIMIT 5;

-- 7. Find users who have liked every single photo
SELECT username, count(*) AS total
FROM likes
JOIN users
	ON likes.user_id = users.id
GROUP BY user_id
HAVING total = (SELECT COUNT(*) FROM photos);

SELECT COUNT(*) FROM photos;