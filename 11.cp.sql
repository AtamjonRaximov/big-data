#1.	chinook database_dagi invoice jadvalida keltirilgan BillingCity ustunidagi ma’lumotlarning uzunliklari keltirilgan ustunni chiqaring
#select BillingCity,length(BillingCity) from chinook.invoice 

#2.	1.	Chinook database_dagi Invoice jadvalidan umumiy summalar yig‘indisini hisoblang va natijani yaxlitlab ko‘rsating (butun son holatiga keltiring).alter
#select  round(sum(Total)) from chinook.invoice

#2.	Chinook database_dagi Invoice jadvalidan umumiy narxni pastga yaxlitlang va eng katta umumiy summani (MAX) toping.
#select floor(Max(Total)) from chinook.invoice

#3.	Chinook database_dagi Track jadvalidan barcha treklar narxining o‘rtacha qiymatini hisoblang va natijani yuqoriga va pastga yaxlitlagan holda chiqaring.
#select ceiling(avg(UnitPrice)), floor(avg(UnitPrice)) from chinook.track

#4.	Chinook database_dagi Invoice jadvalidan umumiy narxi butun son bo’lgan barcha fakturalarning umumiy summasini toping.

#5.	Chinook database_dagi Track jadvalidan har bir trekning narxining kvadratini hisoblang va barcha treklar uchun ushbu qiymatlarning yig’indisini toping.

#6.	Chinook database_dagi Invoice jadvalidan umumiy narxning eng katta, eng kichik, va o’rtacha qiymatlarini hisoblang, va har bir natijani 2 xonagacha yaxlitlab qaytaring.
#select * from chinook.invoice