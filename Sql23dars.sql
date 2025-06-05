# Like; Order BY clause; Limt; Aliasing
# 1.	World database_dagi country jadvalidan foydalanib mamlakat kodi 
#  A harfi bilan boshlanadigan mamlakatlarning kodlari va nomlarini chiqaring.
 
 select * from country where code like "A%";
 
 # Order by; limit;
 # 1.	World database_dagi country jadvalidan foydalanib mamlakatlarning nomlarini va 
 # aholi sonini, ulardagi aholi sonining ortib borishi tartibida chiqaring.
  select name, population from country  order by Population limit 10;
 
 # 1.	Sakila database_dagi category jadvalidagi 
 # category_id ustunini ID ga va name ustunini names ga o‘zgrtirib oling   
 select category_id as "employee ID" , name as "names" from category
 