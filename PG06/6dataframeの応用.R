library(AER)

data("USMacroSW")

head(USMacroSW)

USMacroSW[1:10,]

data = USMacroSW[,c(2,5,6)]

summary(data)

data2 = data[1:30,]

summary(data2)

write.csv(data2, "mydata.csv")