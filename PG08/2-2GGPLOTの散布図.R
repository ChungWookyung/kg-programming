setting = aes(x=mpg, y=hp)
ggplot(mtcars, setting) + geom_point()

ggplot(mtcars, setting) + geom_point() + ggtitle("散布図の題名")
ggplot(mtcars, setting) + geom_point() + ggtitle("散布図の題名") + xlab("燃費") + ylab("馬力")

setting = aes(x=mpg, y=hp, col=as.factor(cyl))
ggplot(mtcars, setting) + geom_point()

ggplot(mtcars, setting) + geom_point() + labs(color="気筒")

p = ggplot(mtcars, setting) + geom_point() + labs(color="気筒")
p + ggtitle("散布図の題名") + xlab("燃費") + ylab("馬力")
