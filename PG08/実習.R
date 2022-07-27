barplot(mtcars$qsec)
barplot(mtcars$qsec, names.arg=rownames(mtcars),las = 2, horiz=TRUE)

barplot(sort(mtcars$qsec), names.arg=rownames(mtcars)[order(mtcars$qsec)],las = 2, horiz=TRUE)

plot(mtcars$wt, mtcars$qsec)
plot(mtcars$wt, mtcars$qsec, col=gear)

plot(mtcars$wt, mtcars$qsec, col=mtcars$gear)
legend("topright", legend = unique(mtcars$gear), pch = 1, col = unique(mtcars$gear))


plot(data$X, data$ffrate, type="l")
lines(data$X, data$tbill)

plot(data$X, data$ffrate, type="l", col="yellow")
lines(data$X, data$tbill, col="green")
legend("topright", legend = c("ffrate","tbill"), lty = 1, col = c("yellow","green"))


setting = aes(x=wt, y=qsec)
ggplot(mtcars,setting) + geom_point()


setting = aes(x=wt, y=qsec, col=as.factor(gear))
ggplot(mtcars,setting) + geom_point()


setting = aes(x=wt, y=qsec, col=as.factor(gear))
p = ggplot(mtcars,setting) + geom_point() + ggtitle("重さと0百の散布図")
p + xlab("重さ") + ylab("0百") + labs(color="ギア数")





