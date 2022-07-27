data = read.csv("mhigh.csv")

head(data)

summary(data)

colnames(data)

colnames(data) = c("name","name.katakana","sex","grade","japanese","math","sum","hieght","weight","class")

head(data)

write.csv(data, "watashi.csv")
