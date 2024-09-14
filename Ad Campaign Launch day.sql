#Your Task: Determine the day of the week when most users register on Instagram.
#use table

use ig_clone;
select dayname(created_at) as day ,count(*) as most_registration
from users
group by day
order by most_registration desc
limit 2;