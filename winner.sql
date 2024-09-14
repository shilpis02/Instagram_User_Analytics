#Determine the winner of the contest and provide their details to the team.
#use these 3 tables -username, likes, photo

use ig_clone;

select users.id, users.username, photos.image_url, count(*) as most_like
from photos
join likes on photos.id=likes.photo_id
join users on photos.user_id=users.id
group by photos.id
order by most_like desc
limit 1;



