as.binary(1024)

as.binary(1)
as.binary(2)
as.binary(4)
as.binary(8)
as.binary(16)
as.binary(32)
as.binary(64)

as.binary(-1)

as.binary(55)
as.binary(73)
as.binary(55+73)


strtoi("110111000110110110101", base = 2)
as.binary(1234567890)
as.binary(7**10)
for (i in 1000:10000){print(as.binary(i))}






as.hexmode(100)

as.hexmode(1)
as.hexmode(16)
as.hexmode(256)

as.hexmode(-1)

as.hexmode(64)
as.hexmode(35)
as.hexmode(64+35)






charToRaw("abcdefghijklmnopqrstuvwxyz")


num1 = charToRaw("a")
num2 = charToRaw("A")
strtoi(num1, base=16) - strtoi(num2, base=16)

