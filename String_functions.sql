#STRING FUNCTIONS (Length, Upper, lower, left, right, substring, replace, locate, concat;)

#1.	chinook database_dagi customer jadvalida keltirilgan mijozlarning ismi va ularga tegishli
# PostalCode ustunidagi ma’lumotlarning uzunliklari keltirilgan ustunlarni yarating 
#select FirstName,PostalCode, length(FirstName),length(PostalCode) from chinook.customer

#2.	chinook database_dagi invoice jadvalida keltirilgan BillingPostalCode ustunidagi 
# barcha ma’lumotlarning uzunliklari keltirilgan ustunni yarating va bu ustunga BPC deb nom bering
#select BillingAddress,length(BillingAddress) as "BPC" from chinook.invoice

#3.	chinook database_dagi invoice jadvalida keltirilgan BillingCity va BillingCountry ustunidagi ma’lumotlarning barchasini katta harflarda chiqaring
#select BillingCity,BillingCountry, upper(BillingCity),upper(BillingCountry) from chinook.invoice

#4.	chinook database_dagi invoice jadvalida keltirilgan BillingAddress ustunidagi ma’lumotlarning barchasini kichkina harflarda chiqaring 
#select BillingAddress, lower(BillingAddress) from chinook.invoice

#5.	Ma’lumotlari chinook database_dagi customer jadvalida keltirilgan va telefon raqamlari +3 bilan boshlanadigan mijozlarning ism va familyalarini 
#katta harflarda, addresslarini kichik harflarda va telefon raqamlarini o’z holaticha keltirilgan ustunlarni chiqaring
#select FirstName,LastName,Phone, upper(concat(FirstName," ",LastName)), lower(Address) from chinook.customer where Phone like "+3%"

#6.	chinook database_dagi customer jadvalida ma’lumotlari keltirilgan, Email addresslari .com bilan tugaydigan mijozlarning, ismi va mamlakat nomlari katta harflarda,
# telefon raqamlari, Email addresslari va supportrepid lari o’z holaticha hamda supportrepid lari kamayib borish tartibida keltirilgan ustunlarni chiqaring.
#select Phone,Email,SupportRepId, upper(FirstName), upper(Country) from chinook.customer where Email like "%.com" order by SupportRepId desc

#7.	chinook database_dagi employee jadvalidan ishchilarning ishga yollangan oylarini chiqaring
#select HireDate from chinook.employee

#8.	chinook database_dagi employee jadvalidan ishchilarning tug’ilgan yillarini chiqaring
#select FirstName,BirthDate from chinook.employee

#9.	chinook database_dagi customer jadvalidan mijozlarning Emailiga tegishli fr domenlarini com ga o’zgartiring
#select Email, replace(Email,".fr",".com") from chinook.customer where Email like "%.fr"

#10.	chinook database_dagi employee jadvalidan ishchilarning  ism va familyalarini bir ustunga joylashtiring bunda familya katta harflarda bo’lishi zarur.
#select  concat(upper(FirstName)," ", LastName) from chinook.employee

#11.	chinook database_dagi employee jadvalida keltirilgan ishchilarning  ismi va tug’ilgan
 #yillarini bir ustunga joylashtiring bunda ularning ismlari katta harflarda bo’lishi zarur
 #select concat(upper(FirstName)," ",BirthDate) from chinook.employee
 
 #12.	chinook database_dagi employee jadvalida keltirilgan ishchilarning  ismi va tug’ilgan
 #yillarini bir ustunga joylashtirilishidan hosil bo’lgan ma’lumotlarning uzunliklarini toping. (ma’lumot na’munasi: Azamat 2004)
 #select length(concat(FirstName," ",BirthDate)) from chinook.employee
 
 #13.	Chinook database_dagi invoice jadvalidagi ma’lumotlardan invoicedate ustunidan yillarini ajtratib chiqaring va unga invoice_year deb nom bering
 #select substring(InvoiceDate,1,4) as "Invoice_year" from chinook.invoice
 
 #14.	Chinook database_dagi invoice jadvalidagi ma’lumotlardan BillingPostalCode larning oxirgi 3 ta belgisi keltirilgan ustunni chiqaring va uni importantcode deb nomlang
 #select right(BillingPostalCode,3) as "importantcode" from chinook.invoice