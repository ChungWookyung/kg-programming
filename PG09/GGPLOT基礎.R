library("ggplot2")

head(mtcars)

# 散布図
setting = aes(x=mpg, y=hp)
ggplot(mtcars, setting) + geom_point()

# 折れ線グラフ
setting = aes(x=mpg, y=hp)
ggplot(mtcars, setting) + geom_line()

# ヒストグラム
setting = aes(x=mpg)
ggplot(mtcars, setting) + geom_histogram()

# 棒グラフ
setting = aes(x=rownames(mtcars), y=hp)
ggplot(mtcars,setting) + geom_bar(stat="identity") + coord_flip()


# ggtitle, xlab, ylabで名前をつける
setting = aes(x=mpg, y=hp)
ggplot(mtcars, setting) + geom_point() + ggtitle("散布図の題名") + xlab("燃費") + ylab("馬力")

