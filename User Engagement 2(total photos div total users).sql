#provide the total number of photos on Instagram divided by the total number of users.
#use 2 tables- photos and users

select
(select count(id) from photos) / (select count(id)from users)
as output;