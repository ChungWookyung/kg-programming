head(mtcars)

setting = aes(x=mpg)
ggplot(mtcars, setting) + geom_histogram()

data = read.csv("https://raw.githubusercontent.com/ChungWookyung/kg-programming/main/PG08/cps.csv")
head(data)

setting = aes(x=age)
ggplot(data, setting) + geom_histogram()

setting = aes(x=earnings)
ggplot(data, setting) + geom_histogram()

p = ggplot(data, setting) + geom_histogram()
p + ggtitle("アメリカの所得分布") + ylab("") + xlab("時給(ドル単位)")
