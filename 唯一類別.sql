create table yy (
類型 int(4),
數量 int(4)
);

insert into yy values 
(5,3),(6,4),(7,3),(7,4),(7,4),(7,8)

select 類型 from yy group by 類型 having sum(數量)>=4