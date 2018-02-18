
#Dates
Sys.Date()

today <- Sys.Date()
class(today) #Date Object

#Date as Character
c<- "1990-01-01"
my.date <- as.Date(c)
class(my.date)

as.Date("Nov-03-1990") #이러면 안되겠지

#Foramtting
# %d	Day of the month (decimal number)
# %m	Month (decimal number)
# %b	Month (abbreviated)
# %B	Month (full name)
# %y	Year (2 digit)
# %Y	Year (4 digit)
my.date <- as.Date("Nov-03-90", format="%b-%d-%y")
my.date

as.Date("June,01,2002", format="%B,%d,%Y")


#POSIXct #portabla operating system interface
as.POSIXct("11:02:03", format="%H:%M:%S")
 
#이제부터 무조건 이걸로 쓰면 됨.
?strptime #여기에 다 써있음. 이게 기본
time<-strptime("11:02:03", format="%H:%M:%S")
help(strptime)
#strptime("date", format="")

class(time)
Sys.Date()
hi<-strptime(Sys.Date(), "%Y-%m-%d")
#이 친구들은 class찍어보면, POSIXlt로 나옴. 
