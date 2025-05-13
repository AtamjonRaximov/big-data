#LIKE 
#1.	World database_dagi country jadvalidan foydalanib mamlakat kodi A harfi bilan boshlanadigan mamlakatlarning kodlari va nomlarini chiqaring.
#select Code,Name from world.country where Code like "A%"

#2.	World database_dagi country jadvalidan foydalanib mustaqil bo’lgan yili
# 1 raqami bilan tugaydigan va A yoki B harfi bilan boshlanuvchi regionlarga ega mamlakatlarning ro’yxatini chiqaring.
 #select * from world.country where IndepYear like "%1" and Region like "A%" or "B%"
 
 #3.	World database_dagi country jadvalida o’rtacha umr ko’rish davomiyligi keltirilgan 
 #ustundan 7 raqimi bilan boshlandiganlarini ajratib bering
 #select * from world.country where LifeExpectancy like "7%"
 
 #4.	World database_dagi country jadvalidan foydalanib capital raqami ikki xonali
 #son bo’lgan mamlakatlarning nomi va mustaqil bo’lgan yillarini chiqaring
 #select Name,IndepYear from world.country where Capital like "__"
 
 #5.	Sakila database_dagi address jadvalidan foydalanib, postal kodi 5 bilan boshlanib, 
 #telefon raqami 5 bilan tugaydigan mijozlarga tegishli address_id larni chiqaring
 #select address_id from sakila.address where postal_code like "5%" and phone like "%5"
 
 #ORDER BY CLAUSE 
#1.	World database_dagi country jadvalidan foydalanib mamlakatlarning nomlarini va
# aholi sonini, ulardagi aholi sonining ortib borishi tartibida chiqaring.
#select Name,Population from world.country order by Population

#2.	World database_dagi country jadvalidan foydalanib mamlakatlarning kodlarini 
#va aholi sonini, ulardagi aholi sonining ortib borishi tartibida chiqaring.
#select Code,Population from world.country order by Population

#3.	World database_dagi city jadvalida keltirilgan barcha ma’lumotlarni bu 
#shaharlardagi aholi sonining kamayib borishi tartibida keltiring
#select * from world.city order by Population desc

#4.	World database_dagi country jadvalidan foydalanib Osiyo qit’asida joylashgan
# mamlakatlarning nomlari va o’racha umr ko’rish davomiyligi keltirilgan ustunlarni ulardagi 
#select Name,LifeExpectancy from world.country where Continent="Asia" order by Population desc

#5.	World database_dagi country jadvalidan foydalanib Yevropa  qit’asida joylashgan,
# uch xonali capital raqamga ega mamlakatlarning nomlari va mustaqil bo’lgan yillari keltirilgan 
#ustunlarni aholi sonining kamayishi tartibida chiqaring
#select Name,IndepYear,Population from world.country where Continent="Europe" and Capital like "___" order by IndepYear desc, Population desc 

#LIMIT 
#1.	World database_dagi country jadvalidan barcha ustunlarga ega, 
#faqatgina dastlabki 7 qator ma’lumotni chiqaring
#select * from world.country limit 7

#2.	World database_dagi country jadvalidan foydalanib, 
#o’racha umr ko’rish davomiyligi bo’yicha yetakchi 5 ta mamlakatni ko’rsating
#select Name from world.country order by LifeExpectancy desc limit 5

#3.	World database_dagi country jadvalidan foydalanib Osiyo  qit’asida joylashgan 
#va aholisining soni bo’yicha top 3 talikda turuvchi mamlakatlarning nomlarini chiqaring. 
#select Name from world.country where Continent="Asia" order by Population desc limit 3

#4.	World database_dagi country jadvalidan foydalanib, eggalagan maydoni bo’yicha
# reytingda eng quyi 10 talikda turuvchi  va Africa qit’asida joylashgan mamlakatlar ro’yxatini chiqaring.
#select Name from world.country where Continent="Africa" order by SurfaceArea desc limit 10

#5.	World database_dagi country jadvalidan foydalanib, Yevropa qit’asida joylashgan, 
#1950 yildan so’ng mustaqillikka erishgan, aholisining o’racha umr ko’rish davomiyligi 
#70 yosh va undan yuqori bo’lgan va GNP reytingida egallagan o’rni bo’yicha top 5 talik turuvchi mamlakatlar ro’yxatini chiqaring.
#select Name from world.country where Continent="Europe" and IndepYear>=1950 and LifeExpectancy>=70 order by GNP desc limit 5


#ALIASING
#1.	Sakila database_dagi category jadvalidagi category_id ustunini ID ga va name ustunini names ga o‘zgrtirib oling   
#select category_id as "ID",name as "names" from sakila.category

#2.	Sakila database_dagi category jadvalidagi category_id ni 100 ga ortiring va bu  ustunini new_id  deb nomlab oling. Last_update ni update ga o’zgartiring
#select category_id*1000 as "new_id", last_update as "update" from sakila.category 

#3.	Chinook database_dagi genre jadvalida keltirilgan GenreId nomli ustunni ID deb, Name ustunini esa Genre_name deb nomlagan holda taqdim eting.
#select GenreId as "ID",Name as "Genre_name" from chinook.genre

#4.	Chinook database_dagi invoiceline jadvalidan foydalanib, maxsulot sotuvidan bo’ladigan 
#kirimning miqdorlari keltirilgan ustunni revenue deb nomlang va bu ustunni InvoiceId ustuni bilan birgalikda chiqaring
#select Total as "revenue",InvoiceId from chinook.invoice

#5.	Chinook database_dagi customer jadvalida keltirilgan CustomerId nomli ustundagi ID larni 100 ga ortirib va ustun nomini 
# ID deb, FirstName ustunini Forename deb, lastname ustunini esa surename deb nomlagan holda taqdim eting. 
#select CustomerId*100 as "ID",FirstName as "Forename", LastName as "surname" from chinook.customer