/*
A) Marketing 

1st answer
select username,created_at from users order by created_at asc LIMIT 5;

2nd answer
select users.id,users.username from users left join photos on users.id=photos.user_id where photos.user_id IS NULL;

3rd answer
select users.username, photos.id as 'ID of Image', photos.image_url as 'URL of Image', count(likes.user_id) as 'No.of Likes' from photos 
inner join likes on photos.id=likes.photo_id 
inner join users on photos.user_id=users.id  
group by users.id order by count(likes.user_id) desc LIMIT 1;

4th answer
select tags.tag_name,photo_tags.tag_id,count(photo_tags.photo_id) as 'count of photos used this tag' from photo_tags 
inner join tags on tags.id=photo_tags.tag_id
group by photo_tags.tag_id order by count(photo_tags.photo_id) desc  LIMIT 5;

5th answer
select created_at,dayname(created_at),count(*) from users group by dayname(created_at);

B) Investor Mterics
1. 
SELECT COUNT(*) / COUNT(DISTINCT user_id) AS avg_posts_per_user
FROM photos;

SELECT COUNT(*) from photos;
select COUNT(DISTINCT user_id) from photos;

2.
SELECT user_id, COUNT(*) AS total_likes
FROM likes
GROUP BY user_id
HAVING total_likes = (SELECT COUNT(*) FROM photos);




*/