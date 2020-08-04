select * from permission_table 
group by permission 
having count(name)=1