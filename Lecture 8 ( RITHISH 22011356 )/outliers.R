library(readr)

players <- read.csv("players.csv")
View(players)

is.na(players)

#identify outliers
data<-c(30,24,26,28,29,28,27,26,32,34,13,15,14,31,29,28,24,25,30,34,35,27,30,34,44,48)
boxplot(data, main = "Boxplot")

# low extreme = Q1 - 1.5 * IQR
# upper extreme = Q3 + 1.5 * IQR

first_q<-quantile(data,0.25) #produces 26
third_q<-quantile(data,0.75) #produces 31.75
iqr<-IQR(data) #produces 5.75
le<-first_q- 1.5 * iqr #produces 17.375
ue<-third_q + 1.5 * iqr #this produces 40.375

# Handling Outliers!!!
#drop vals
data_new<-data
data_new <- data_new[!data_new<le]
data_new <- data_new[!data_new>ue]
data_new

#replace vals with mean
data_new1 <- data
avg <- round(mean(data_new1))
data_new1[data_new1<le] <- avg
data_new1[data_new1>ue] <- avg
data_new1

#replace values that are <le and >ue: replace with le and ue
data_new2 <- data
data_new2[data_new2<le] <- le
data_new2[data_new2>ue] <- ue
data_new2
