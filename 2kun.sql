#1.	World database_dagi countrylanguage jadvali orqali mamlakat kodi AUS bo’lgan davlatdagi norasmiy hisoblangan tillar va ularning foiz ko’rsatgichini aniqlang.
#select CountryCode,IsOfficial,Percentage from world.countrylanguage where CountryCode="AUS" and IsOfficial="F" 

#2.	World database_dagi countrylanguage jadvali orqali mamlakat kodi CAN bo’lgan davlatdagi rasmiy hisoblangan tillar va ularning foiz ko’rsatgichini aniqlang.
#select Percentage from world.countrylanguage where CountryCode="CAN" and IsOfficial="T"\

#3.	World database_dagi countrylanguage jadvali orqali German tili rasmiy hisoblangan mamlakatlarning kodlarini aniqlang
#select CountryCode from world.countrylanguage where Language="German" and IsOfficial="T"

#4.	World database_dagi countrylanguage jadvali orqali Arabic tili norasmiy hisoblangan mamlakatlarning kodlarini aniqlang
#select CountryCode from world.countrylanguage where Language="Arabic" and IsOfficial="F"

#5.	World database_da mavjud city jadvali orqali Sydney sharining jadval bo’yicha ID raqami va aholi sonini aniqlang
#select ID,Population from world.city where Name="Sydney" 


#6.	World database_da mavjud city jadvalidagi aholisining soni 24000 yoki undan kam  bo’lgan Shahar nomlarini chiqaring
#select Name from world.city where Population<=24000 


#7.	World database_da mavjud city jadvalidagi aholisining soni 50000 va 100000 oralig’ida bo’lgan Shaharlarning nomlari va aholi sonini chiqaring.
#select Name,Population from world.city where Population between 50000 and 100000

#8.	World database_dagi country jadvalidan foydalanib aholisining o’rtacha umr ko’rish muddati 50 yosh va undan past bo’lgan mamlakatlar ro’yxatini chiqaring.
#select Name from world.country where LifeExpectancy<=50

#9.	World database_dagi country jadvalida keltirilgan ma’lumotlar orqali maydoni 5 000 000 km2 dan kam bo’lgan mamlakat nomi va aholi sonini aniqlang.
#select Name,Population from world.country where SurfaceArea<5000000

#10.	World database_dagi city jadvalidan mamlakat kodi NLD yoki ARG bo’lgan hamda aholi soni 300 000 dan yuqori bo’lgan shaharlar nomlarini chiqaring.
#select Name from world.city where (CountryCode="NLD" or CountryCode="ARG") and Population>300000

#11.	World database_dagi country jadvalidan foydalanib 1700 va 1900 yillar oralig’ida mustaqil bo’lgan davlatlar ro’yxatini chiqaring
#select Name from world.country where IndepYear between 1700 and 1900

#12.	World database_dagi country jadvalidan foydalanib maydoni 200 000 km2 va  5 000 000 km2 gacha oraliqda bo‘lgan mamlakatlar ro‘yxatini chiqaring 
#select Name from world.country where SurfaceArea between 200000 and 5000000

#13.	Nomlari World database_dagi country jadvalida keltirilgan, Osiyo, 
#Yevropa va Afrika qit’alarida joylashgan mamalakatlarga tegishli bo’lgan barcha ma’lumotlarni chiqaring.
#select * from world.country where Continent="Asia" or Continent="Africa" or Continent="Europe"

#14.	World database_dagi country jadvalida keltirilgan, Afrika va Yevropa qit’alaridan tashqari barcha qit’alarga 
#tegishli mamlakatlar ro’yxatini ular eggalagan maydonni chiqaring.
#select Name,SurfaceArea from world.country where Continent!="Africa" and Continent!="Europe"

#15.	World database_dagi countrylanguage jadvali orqali BEL, BEN  va BFA kodli mamlakatlardagi norasmiy 
#hisoblangan tillar va malakat kodlari keltirilgan ustunlarni  chiqaring.
select Language,CountryCode from world.countrylanguage  where (CountryCode="Bel" or CountryCode="BEN" or CountryCode="BFA") and IsOfficial="F"