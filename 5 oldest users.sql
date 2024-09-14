#Your Task: Identify the five oldest users on Instagram from the provided database.
#use table- users

use ig_clone;
select username, created_at
from users
order by created_at
limit 5;