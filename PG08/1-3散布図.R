head(mtcars)

plot(mtcars$mpg, mtcars$hp)

plot(mtcars$mpg, mtcars$hp, col=mtcars$cyl)

unique(mtcars$cyl)

plot(mtcars$mpg, mtcars$hp, col=mtcars$cyl)
legend("topright", legend = unique(mtcars$cyl), pch = 1, col = unique(mtcars$cyl))