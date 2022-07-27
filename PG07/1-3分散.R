a = c(1:10)
var(a)


library("purrr")
b = rdunif(10, 1, 6)
var(b)

sd(a)
a/sd(a)
sd(b)
b/sd(b)


plot(1:10, b/sd(b),ylim = c(0,max(b)),col="red",type = "l")
lines(1:10, b, col="blue")
