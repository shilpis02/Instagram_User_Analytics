#Your Task: Identify users who have never posted a single photo on Instagram.
#use 2 tables: users & photo

use ig_clone;
select u.id, u.username
from users u
left join photos p on u.id=p.user_id
where user_id is null
order by p.user_id;