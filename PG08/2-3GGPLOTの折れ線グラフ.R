data = read.csv("confirmed_new.csv")
data$Date = as.Date(data$Date)
head(data)


setting = aes(x=Date, y=ALL)

ggplot(data, setting) + geom_line()

library(reshape2)
data2 = melt(data, id.vars="Date")
head(data2)

setting = aes(x=Date, y=value, col=variable)
ggplot(data2, setting) + geom_line()


prefs = c("Date", "Tokyo", "Osaka")
data3 = melt(data[,prefs], id.vars="Date")

setting = aes(x=Date, y=value, col=variable)
ggplot(data3, setting) + geom_line()

p = ggplot(data3, setting) + geom_line()
p + labs(color="県名") + ggtitle("東京と大阪の新規感染者数") + ylab("") + xlab("日付")
