data = read.csv("https://raw.githubusercontent.com/ChungWookyung/kg-programming/main/PG08/macro.csv")
head(data)

plot(data$X, data$unemp, type="l")
lines(data$X, data$ffrate)

plot(data$X, data$ffrate, type="l")
lines(data$X, data$unemp)

plot(data$X, data$ffrate, type="l", col="red")
lines(data$X, data$unemp, col="blue")
legend("topright", legend = c("ffrate","unemp"), lty = 1, col = c("red","blue"))
