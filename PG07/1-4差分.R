a = c(1:10)
a[2:10] - a[1:9]


library("purrr")
b = rdunif(10, 1, 6)
b
b[2:10] - b[1:9]

b[2:length(b)] - b[1:length(b)-1]

N = length(b)
b[2:N] - b[1:N-1]

plot(1:9,b[2:N] - b[1:N-1], type="l")
