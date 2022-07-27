mean(rdunif(100,0,1))
mean(1:100)

a = rdunif(100,0,1)
plot(a - mean(a), type = "l")


a = rdunif(100,0,1)
var(a)
sd(a)

a = -100:100
var(a)
sd(a)

a = rdunif(100, 1, 6)
var(a)
sd(a)

a = rdunif(100, 1, 6)
(a-mean(a))/sd(a)



a = rdunif(100, 0, 1)
N = length(a)
a[2:N] - a[1:N-1]


a = -100:100
N = length(a)
a[2:N] - a[1:N-1]

a = rdunif(100, 1, 6)
N = length(a)
a[2:N] - a[1:N-1]




a = iris$Petal.Length
mean(a)
var(a)
sd(a)

a = iris$Sepal.Width
mean(a)
var(a)
sd(a)

a = iris$Petal.Width
(a - mean(a))/sd(a)

mtcars[5:25, ]
mtcars[,2:9]
mtcars[20:30,c(5,8)]


iris$A = 3

mtcars$K = "W"












