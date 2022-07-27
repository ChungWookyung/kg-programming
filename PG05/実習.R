as.character(5**10)
as.numeric("000001")

s1 = "0123456789"
print(substr(s1,3,8))

s2 = "abcdefghijklmnopqrstuvwyxz"
print(substr(s2,14,20))

s3 = "あいうえおかきくけこ"
print(substr(s3, 3, 5))


paste(s1,s2, sep="")
paste(s3,s4,s5)
paste(s1,s2,s3,s4,s5,sep="%")



strsplit(s1, split=" ")
strsplit(s2, split="+")




strsplit(s, split="[0-9]")
strsplit(s, split="[a-z]")
strsplit(s, split="[あ-ん]")




d1 = as.Date("2022-05-18")
d2 = as.Date("2004-06-10")

d1-d2
difftime(d1,d2,units="hours")

d3 = as.Date("1800-09-18")
difftime(d1,d3,units="weeks")


as.Date("72年04月12日", "%y年%m月%d日")
as.Date("31/07/2001", "%d/%m/%Y")
