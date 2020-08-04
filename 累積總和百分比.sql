select * from (select a1.id,a1.name,a1.sale,sum(a2.sale)/(select sum(sale) from sale) PCT
from sale a1,sale a2
where a1.id>=a2.id
group by a1.name,a1.sale) c
order by c.PCT desc