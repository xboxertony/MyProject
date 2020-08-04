select distinct c.sale from (select a1.name,a1.sale,count(a2.name) as sale_rank
from sale a1,sale a2
where a1.sale<a2.sale or (a1.sale=a2.sale and a1.name=a2.name)
group by a1.sale,a1.name ) as c 
where c.sale_rank between (select count(*) from sale)/2-0.5 and (select count(*) from sale)/2+0.5