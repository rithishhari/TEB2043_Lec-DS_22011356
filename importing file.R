my_covid <- read.csv("C:/Users/annur/OneDrive/mine/picture/OneDrive/algo/LECTURE_TEB2043_DATA_SCIENCE/my_covid(in).csv")
summary(my_covid)


a<-c(1:5, rep(NA,3),6:10)
data_cv <- read.csv("C:/Users/annur/OneDrive/mine/picture/OneDrive/algo/LECTURE_TEB2043_DATA_SCIENCE/NAexample(in).csv")
newdf<- data_cv[-seq(10, 13), ]
View(newdf)
write.csv (newdf,"C:/Users/annur/OneDrive/mine/picture/OneDrive/algo/LECTURE_TEB2043_DATA_SCIENCE/my_covid(in).csv")
a<-c(1:5, rep(NA,3),6:10)
a

sum(a)

b<-a[!is.na(a)]
b

sum(b)

a<-c(seq(1,10,3), rep(NA,4), seq(10,2,-2))
a

a[is.na(a)]<-0
a

a <- c(seq(1,10,3), rep(NA,4), seq(10,2,-2))
m <- mean(a, na.rm = TRUE)
a[is.na(a)] <- m
a

is.na(df) #whole dataframe

is.na(df[["VarA"]])
