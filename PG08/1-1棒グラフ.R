head(mtcars)

barplot(mtcars$mpg)

rownames(mtcars)

barplot(mtcars$mpg, names.arg = rownames(mtcars))
barplot(mtcars$mpg, names.arg = rownames(mtcars), las = 2)
barplot(mtcars$mpg, names.arg = rownames(mtcars), las = 2, horiz = TRUE)

sort(mtcars$mpg)
order(mtcars$mpg)
rownames(mtcars)[order(mtcars$mpg)]

barplot(sort(mtcars$mpg), names.arg = rownames(mtcars)[order(mtcars$mpg)], las = 2, horiz = TRUE)

mtnew = mtcars[order(mtcars$mpg),]
barplot(mtnew$mpg, names.arg = rownames(mtnew), las = 2, horiz = TRUE)
