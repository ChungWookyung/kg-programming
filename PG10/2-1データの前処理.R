data = read.csv("gumma.csv")
head(data)

colnames(data)

colnames(data) = c("Date","Code","Pref","Pop","NA1","Kinder","NA2","Elem","NA3","Middle","NA4","High","NA5")
head(data)

library(stringr)

d1 = str_sub(data$Date,1,4)
d2 = as.numeric(d1)
data$Date = d2