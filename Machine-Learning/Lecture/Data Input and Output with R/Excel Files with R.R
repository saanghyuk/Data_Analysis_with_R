

install.packages("readxl")

#사용
library('readxl')

#이제 Excel을 써보자. 

#This will list the sheets of the Excel File
excel_sheets('Sample-Sales-Data.xlsx') #Sheet1


df <- read_excel('Sample-Sales-Data.xlsx', sheet="Sheet1")
df
head(df)
sum(df$Value)
summary(df)

#excel_sheets --> return the names of all the sheets
#리스트를 다 가지고 와서, read_excel에 적용해라 excel file의 path에 따라
#그니깐 엑셀의 시트들 다 가지고 와서, 리스트에 순서대로 넣는 명령임.  
entire.workbook <- lapply(excel_sheets('Sample-Sales-Data.xlsx'), 
                          read_excel, path='Sample-Sales-Data.xlsx')
entire.workbook


#Writing to Excel File
install.packages('xlsx')

install.packages('rJava')
install.packages('rJava','http://www.rforge.net/')
install.packages('xlsxjars')
library(xlsx)
head(mtcars)

setwd('/Users/sanghyuk/Documents/R/Machine-Learning/Data Input and Output with R')
write.xlsx(mtcars, "output_example.xlsx")

