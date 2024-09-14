#Your Task: Identify and suggest the top five most commonly used hashtags on the platform.
#use 2 tables- photo_tags,tags

use ig_clone;

select tag_name, count(*)as total
from tags
join photo_tags on tags.id=photo_tags.tag_id
group by tag_name
order by total desc
limit 5;