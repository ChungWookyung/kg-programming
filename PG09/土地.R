library("ggplot2")
library("stringr")

# データを読み込む
data = read.csv("https://raw.githubusercontent.com/ChungWookyung/kg-programming/main/PG09/tochi1.csv")
head(data)

# 年度を処理する
data$時点 = str_sub(data$時点,1,4) %>% as.numeric

# 列名を整理する
colnames(data) = c("時点","地域コード","県名","住宅数","注記1","空き家数","注記2")
head(data)

# 注記を除いて、NA値を削除
data = data[,c(1,2,3,4,6)]
data = na.omit(data)
head(data)

# 住宅数の折れ線グラフを描く
setting = aes(x=時点, y=住宅数, group=県名, color=県名)
ggplot(data, setting) + geom_line()

# 空き家数の折れ線グラフを描く
setting = aes(x=時点, y=空き家数, group=県名, color=県名)
ggplot(data, setting) + geom_line()


# 群馬県だけに絞る
data2 = data[data$県名 == "群馬県",]
data3 = melt(data2[,c("時点","住宅数","空き家数")],id.vars=c("時点"))
setting = aes(x=時点, y=value, color=variable)
ggplot(data3,setting) + geom_line()
