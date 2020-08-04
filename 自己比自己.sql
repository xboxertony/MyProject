select * from sc group by sno having avg(score)>65

select gender,avg(score) from sc group by gender

set sql_safe_updates=0
delete from sc where cno is null and score is null;

select * from sc

insert into sc values
(2,2,50),
(3,1,50),
(3,2,80)


alter table sc add column Gender varchar(4) after score;

update sc set gender='女' where sno not in (1,2)