library("ggplot2")

head(mtcars)

ggplot(mtcars)

setting = aes(x=mpg, y=hp)
ggplot(mtcars, setting)

setting = aes(x=mpg, y=hp)
ggplot(mtcars, setting) + geom_point()

ggplot(mtcars, setting) + geom_line()

setting2 = aes(x=mpg)
ggplot(mtcars, setting2) + geom_histogram()

setting3 = aes(x=rownames(mtcars), y=hp)
ggplot(mtcars,setting3) + geom_bar(stat="identity") + coord_flip()