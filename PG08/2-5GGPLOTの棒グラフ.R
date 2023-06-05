data = read.csv("https://raw.githubusercontent.com/ChungWookyung/kg-programming/main/PG08/oecd.csv")
head(data)

data2010 = data[data$year == 2010,]
head(data2010)

setting = aes(x=Country, y=gdp)
ggplot(data2010, setting) + geom_bar(stat="identity") + coord_flip()

setting = aes(x = reorder(Country, gdp, decreasing = FALSE), y=gdp)
ggplot(data2010, setting) + geom_bar(stat="identity") + coord_flip()

p = ggplot(data2010, setting) + geom_bar(stat="identity") + coord_flip()
p + ggtitle("OECD各国のGDPランキング(2010)") + ylab("国名") + xlab("GDP")
