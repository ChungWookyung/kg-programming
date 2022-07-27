library("ggplot2")
library("stringr")
library("reshape2")

# データを読み込む
data = read.csv("keizai1.csv")
head(data)

# 年度を処理する
data$時点 = str_sub(data$時点,1,4) %>% as.numeric

# 列名を整理する
colnames(data) = c("時点","地域コード","県名","事業所数.1次産業","注記1","事業所数.2次産業","注記2","事業所数.3次産業","注記3")
head(data)

# 注記を除いて、NA値を削除
data = data[,c(1,2,3,4,6,8)]
data = na.omit(data)
head(data)

# 1次産業の折れ線グラフを描く
setting = aes(x=時点, y=事業所数.1次産業, group=県名, color=県名)
ggplot(data, setting) + geom_line()

# 2次産業の折れ線グラフを描く
setting = aes(x=時点, y=事業所数.2次産業, group=県名, color=県名)
ggplot(data, setting) + geom_line()

# 3次産業の折れ線グラフを描く
setting = aes(x=時点, y=事業所数.3次産業, group=県名, color=県名)
ggplot(data, setting) + geom_line()

# 群馬県だけに絞る
data2 = data[data$県名 == "群馬県",]
data3 = melt(data2[,c("時点","事業所数.1次産業","事業所数.2次産業","事業所数.3次産業")],id.vars=c("時点"))
setting = aes(x=時点, y=value, color=variable)
ggplot(data3,setting) + geom_line()