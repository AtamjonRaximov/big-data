#1.	World database_dagi city jadvalidan Shahar nomlari va  mamlakat kodlari keltirilgan ustunlarni chiqaring.

#select Name,CountryCode from world.city

#2.	World database_dagi country table_da mamlakatlar nomi, aholi soni va egallagan maydoni keltirilgan ustunlarni chiqarib bering.

#select Name,Population,SurfaceArea from world.country

#3.	World database_dagi country table_da keltirilgan ma’lumotlardan foydalanib har bir
# mamlakat aholisining jon boshiga to’g’ri keladigan maydonning o’rtacha qiymatini toping.

#select Population/SurfaceArea from world.country

#4.	World database_dagi country table_dan mamalakat nomlari, aholi soni va o’rtacha umr ko’rish muddatining 5 ga kamaytirilgan ustunlarini chiqaring.
#select Name,Population,LifeExpectancy-5 from world.country

#5.	World database_dagi country table_da qaysi continentlar keltirilgan?
#select distinct Continent from world.country

#6.	World database_dagi country jadvalida nomlari keltirilgan mamlakatlarda qanday hukumat shakllari mavjud.
#select Name,GovernmentForm from world.country

#7.	World database_dagi city jadvalida qanday turdagi  CountryCode_lar mavjud
#select Name from world.city


#1.	World database_dagi city jadvalidan mamlakat kodi AFG bo’lgan shaharlarga tegishli barcha ma’lumotlarni chiqaring.
#select * from world.city where CountryCode="AFG"

#2.	World database_dagi city jadvalidan Preston shahridagi aholi sonini toping (bu ma’lumot bizga aholining o’sish ko’rsatgichini baholash uchun zarur)
#select Population from world.city where Name="Preston" 

#3.	World database_dagi city jadvalida ID raqami 45 bo‘lgan shaharning mamlakat kodi va aholi sonini aniqlang.
#select CountryCode,Population from world.city where ID=45

#4.	World database_dagi city jadvalidan aholi soni 270000 ga teng bo’lgan shaharlar nomini aniqlang 
#select Name from world.city where Population=270000

#5.	World database_dagi countrylanguage jadvalidan AFG kodli mamlakatda rasmiy va norasmiy sanalgan tillar va ularning foiz ko’rsatgichini chiqaring
#select IsOfficial,Language,Percentage from world.countrylanguage where CountryCode="AFG"


#homework

#OR and NOt
#1.	World database_dagi country jadvalida keltirilgan ma’lumotlardan foydalanib
# aholi soni 24 000 000  dan yuqori bo’lgan mamlakat nomlari va ularning kontinentlari ro’yaxatini chiqaring.
#select Name, Continent from world.country where Population>24000000

#2.	World database_dagi country jadvalidan foydalanib 1900 yildan oldin mustaqil 
#bo’lgan davlatlarning nomlari va mustaqil bo’lgan yillari ro’yxatini chiqaring
#select Name,IndepYear from world.country where IndepYear<1900

#3.	World database_dagi country jadvalidan foydalanib aholisining o’rtacha 
#umr ko’rish muddati 79 yosh va undan yuqori bo’lgan mamlakatlar ro’yxatini chiqaring
#select Name from world.country where LifeExpectancy>=79

#4.	World database_dagi country jadvalida keltirilgan ma’lumotlar orqali maydoni 
#15 000 000 km2 dan yuqori bo’lgan mamlakat nomi va aholi sonini aniqlang.
#select Name,Population from world.country where SurfaceArea>15000000

#5.	World database_dagi country jadvalida keltirilgan ma’lumotlar orqali mamlakat kodi AFG bo’lmagan shaharlar nomlarni chiqaring
#select NAme from world.country where Code!="AFG"

#Task2
#1.	World database_dagi countrylanguage jadvalidan ingliz tili norasmiy tili hisoblangan mamlakatlarning countrycode_larini chiqaring
#select * from world.countrylanguage where Language!="English" and IsOfficial="F"

#2.	World database_dagi country jadvalidan hukumat shakli republic bo’lgan va 1980 yildan oldin mustaqillikka erishgan mamlakatlar ro’yxatini chiqaring.
#select Name  from world.country where GovernmentForm="republic" and IndepYear<1980

#3.	World database_dagi country jadvalidan osiyo yoki yevropa qit’asida joylashgan va aholi soni 50 000 000
# dan kam bo’lgan mamlakatlar nomini va ularning egallagan maydoni ro’yxatini chiqaring.
#select Name,SurfaceArea from world.country where Continent="Asia" or Continent="Europe" and Population<50000000

#4.	World database_dagi city jadvalidan mamlakat kodi NLD va ARG bo’lgan hamda aholi soni 500 000 dan yuqori bo’lmagan shaharlar nomlarini chiqaring.
#select Name from world.city where CountryCode="NLD" and CountryCode="ARG" and Population<=500000

#5.	World database_dagi country jadvalidan osiyo qita’sida joylashgan, aholi soni 20 000 000 dan yuqori va hukumat shakli Republic bo’lgan
# yoki 1950 yildan keyin mustaqillikka erishgan mamlakatlarga tegishli barcha ma’lumotlarni chiqaring.
#select * from world.country where Continent="Asia" and Population>20000000 and (GovernmentForm="Republic" or IndepYear> 1950)


#Between
#1.	World database_da mavjud city jadvalidagi aholisining soni 900 000 va 1 000 000 oralig’ida bo’lgan shaharlarga tegishli barcha ma’lumotlarni chiqaring.
#select * from world.city where  Population between 900000 and 1000000

#2.	World database_da mavjud country jadvalidagi aholisining soni 10 000 000 va 30 000 000 oralig’ida bo’lgan  va aholisining 
#o’rtacha umr ko’rish  davomiyligi 70 va 75 yosh oralig’ida bo’lgan mamalakatlarga tegishli barcha ma’lumotlarni chiqaring.
#select * from world.country where Population between 10000000 and 30000000 and LifeExpectancy between 70 and 75

#3.	World database_dagi countrylanguage jadvali orqali aholisining rasmiy tilida so’zlashish ko’rsatgichi
# 90% dan 100% oraliqda bo’lgan mamlakatlarning kodlari  va so’zlashish ko’rsatgichalri bo’yicha ro’yxatini chiqaring
#select CountryCode, Language from world.countrylanguage where IsOfficial="T" and Percentage between 90 and 100

#4.	World database_dagi country jadvalidan foydalanib 1900 va 2000 yillar oralig’ida mustaqil bo’lgan davlatlar ro’yxatini chiqaring
#select Name from world.country where IndepYear between 1900 and 2000

#5.	World database_dagi country jadvalidan foydalanib maydoni 500 000 km2 va  1 000 000 km2 gacha oraliqda bo‘lgan mamlakatlar ro‘yxatini chiqaring 
#select Name from world.country where SurfaceArea between 500000 and 1000000

#In
#1.	Nomlari World database_dagi country jadvalida keltirilgan, Osiyo, Yevropa va Janubiy 
#Amerika qit’alarida joylashgan mamalakatlarga tegishli bo’lgan barcha ma’lumotlarni chiqaring.
#select * from world.country where Continent in ("Asia","Europe","South America")

#2.	Nomlari World database_dagi country jadvalida keltirilgan, Osiyo va Yevropa qit’alaridan tashqari barcha qit’alarga
# tegishli mamlakatlar ro’yxatini ular eggalagan maydonga bo’g’liq holda chiqaring
#select Name,SurfaceArea from world.country where not Continent in("Asia","Europe")

#3.	World database_dagi country jadvalida mavjud Osiyo, Afrika va Yevropa qit’alaridagi mamalakatlar ro’yxati va ularning har biridagi aholi sonini chiqaring.
#select Name,Population from world.country where Continent in ("Asia","Africa","Europe")

#4.	World database_dagi countrylanguage jadvali orqali ABW va AFG kodli mamlakatlarga tegishli barcha ma’lumotlarni chiqaring.
#select * from world.countrylanguage where CountryCode in ("ABW","AFG")

#5.	 World database_dagi countrylanguage jadvali orqali UZB, IRN  va KGZ kodli 
#mamlakatlardagi norasmiy hisoblangan tillar va malakat kodlari keltirilgan ustunlarni  chiqaring.
#select Language,CountryCode from world.countrylanguage where CountryCode in ("UZB","IRN","KGZ") and IsOfficial="f"