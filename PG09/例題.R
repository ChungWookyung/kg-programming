library("ggplot2")
library("stringr")

# データを読み込む
data = read.csv("https://raw.githubusercontent.com/ChungWookyung/kg-programming/main/PG09/hotel.csv")
head(data)

# 年度を処理する
data$時点 = str_sub(data$時点,1,4) %>% as.numeric

# 列名を整理する
colnames(data) = c("時点","地域コード","県名","宿泊営業施設数","注記")
head(data)

# 注記を除いて、NA値を削除
data = data[,1:ncol(data) - 1]
data = na.omit(data)
head(data)

# 折れ線グラフを描く
setting = aes(x=時点, y=宿泊営業施設数, group=県名, color=県名)
ggplot(data, setting) + geom_line()

# データの部分集合を選ぶ
data2 = data[data$県名 %in% c("東京都","大阪府"),]

# 選んだデータを描く
setting = aes(x=時点, y=宿泊営業施設数, group=県名, color=県名)
ggplot(data2, setting) + geom_line()
