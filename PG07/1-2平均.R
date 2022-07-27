a = c(1:10)
mean(a)


library("purrr")
rdunif(5, 1, 6)
b = rdunif(10, 1, 6)
mean(b)


a - mean(a)
b - mean(b)


plot(1:10, b-mean(b),ylim = c(-max(b),max(b)),col="red",type = "l")
lines(1:10, b, col="blue")
