#Your Task: Identify users (potential bots) who have liked every single photo on the site.
#use 3 tables: users, likes and photos 

select u.id
from users u
join likes l on u.id=l.user_id
group by user_id
having count(distinct l.photo_id)= (select count(*) from photos)
;