library(ggplot2)

setting = aes(x=Date, y=Pop)
ggplot(popdata,setting) + geom_line()

setting = aes(x=Date, y=Kinder)
ggplot(schooldata,setting) + geom_line()

setting = aes(x=Date, y=Kinder)
ggplot(schooldata,setting) + geom_line() + xlab("年度") + ylab("幼稚園数") + ggtitle("群馬県の幼稚園数")

setting = aes(x=Kinder, y=Elem)
ggplot(schooldata,setting) + geom_point()

setting = aes(x=Kinder, y=Elem, color=Date)
ggplot(schooldata,setting) + geom_point()

setting = aes(x=Kinder, y=Elem, color=Date)
ggplot(schooldata,setting) + geom_point() + xlab("幼稚園数") + ylab("小学校数") + labs(color="年度") + ggtitle("幼稚園数と小学校数の散布図")

setting = aes(x=Elem)
ggplot(schooldata,setting) + geom_histogram()


library(reshape2)
schoolmelt = melt(schooldata, id.vars="Date")
head(schoolmelt)

setting = aes(x=Date, y=value, color=variable)
ggplot(schoolmelt,setting) + geom_line()