create table social_media(
user_id serial primary key,
followers_count int, 
likes_count bigint,
engagement_rate decimal(10,2)
); 

insert into social_media(followers_count,likes_count,engagement_rate)
values
(256,14000,5.6),
(986,24000,6.6)

select * from social_media
select likes_count from social_media
select likes_count from social_media where followers_count>256
