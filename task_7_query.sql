select * from grocery_items
create view grocery_data as select product_name,product_type,after_tax
from grocery_items
where price > 100
select * from grocery_data

--alter table-

alter table grocery_data add quantity int default 0 not null 

alter table grocery_data rename product_type to "P.type"

select * from grocery_data

--update--

update grocery_data set sumofafter_tax = 500 where p.type = 'veg'

--delete--

delete from grocery_data where p.name = 'Fruits'