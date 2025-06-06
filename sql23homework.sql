#Misol 1: track jadvalidan dastlabki 5 trekni oling.
#select * from chinook.track limit 5

#Misol 2: album jadvalidan dastlabki 10 ta albomni oling.
#select * from chinook.album limit 10

#Misol 3: customer jadvalidan dastlabki 5 mijozning ismi va familiyasini oling.
#select FirstName,LastName from chinook.customer limit 5

#Misol 4: track jadvalidan treklar nomini ularning narxi bo'yicha o'sish tartibida tartiblang.
#select * from chinook.track order by Name,UnitPrice

#Misol 5: album jadvalidan albom nomlarini o'sish tartibida saralang
#select * from chinook.album order by Title 

#Misol 6: invoice jadvalidan eng oxirgi tuzilgan 5 ta shartnomani tuzilgan vaqti bo'yicha kamayish tartibida tartiblang
#select * from chinook.invoice order by InvoiceDate desc limit 5

#Misol 7: track jadvalidan trek nomlarini musiqa davomiyligining kamayishi tartibida saralang.
#select * from chinook.track order by Milliseconds desc

#Misol 8: customer jadvalidan Kanadada yashovchi mijozlarni keltiring.
#select * from chinook.customer where Country="Canada"

#Misol 9: track jadvalidan uzunligi 200 sekunddan oshgan treklarni oling
#select * from chinook.track where Milliseconds>200

#Misol 10: customer jadvalidan AQShda yashovchi mijozlarni oling.
#select * from chinook.customer where Country="USA"

#Misol 11: track jadvalidan narxi $0.99 dan katta bo'lgan treklarni oling.
#select * from chinook.track where UnitPrice>0.99

#Misol 12: invoice jadvalidan 2010-01-01 yildan keyin berilgan fakturalarni oling.
#select * from chinook.invoice where InvoiceDate > 2010-01-01

#Misol 13: Uzunligi 200 sekunddan uzun va narxi $0.99 dan yuqori bo'lgan 5 ta trekni toping va ularni narx bo'yicha kamayish tartibida tartiblang.
#select * from chinook.track where Milliseconds>200 and UnitPrice>0.99 order by UnitPrice desc limit 5

#Misol 14: track jadvalidan uzunligi 5 minutdan oshgan va eng qimmat 5 trekni oling.
#select * from chinook.track where Milliseconds>5 order by UnitPrice desc limit 5

#Misol 15: customer jadvalidan AQShda yashovchi va ismi bo'yicha alfavit tartibida saralangan dastlabki 10 mijozni oling.
#select * from chinook.customer where Country="Usa" order by FirstName limit 10