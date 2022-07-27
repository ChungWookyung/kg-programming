library("ggplot2")
library("stringr")

# データを読み込む
data = read.csv("jinkou1.csv")
head(data)

# 年度を処理する
data$時点 = str_sub(data$時点,1,4) %>% as.numeric

# 列名を整理する
colnames(data) = c("時点","地域コード","県名","総人口","注記1","出生率","注記2")
head(data)

# 注記を除いて、NA値を削除
data = data[,c(1,2,3,4,6)]
data = na.omit(data)
head(data)

# 総人口の折れ線グラフを描く
setting = aes(x=時点, y=総人口, group=県名, color=県名)
ggplot(data, setting) + geom_line()

# 出生率の折れ線グラフを描く
setting = aes(x=時点, y=出生率, group=県名, color=県名)
ggplot(data, setting) + geom_line()

