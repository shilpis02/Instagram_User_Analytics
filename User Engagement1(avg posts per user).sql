#Your Task: Calculate the average number of posts per user on Instagram.
#use table photos

use ig_clone;
select avg(post_count) as avg_post_user
from
( select user_id, count(id) as post_count
from photos
group by user_id)
as user_post_count;


#total post 
select sum(post_count) as total_post
from 
( select user_id, count(id) as post_count
from photos
group by user_id)
as total;


#total users
select count(id) as total_users
from users
;

#total active user (atleat post once)
select count(distinct u.id) as total_active_users
from users u
join photos p on u.id=p.user_id
;


