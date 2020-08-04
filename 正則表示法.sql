set @a = 1

INSERT into T values
(10)

select * from T
where case when @a=3 then A<5 
		   when @a=0 then A<4
           when @a=1 then A REGEXP '[2-47-9]'
end


desc T

alter table T modify A varchar(2);