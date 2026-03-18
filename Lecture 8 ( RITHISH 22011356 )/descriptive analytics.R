#_____________________________DESCRIPTIVE ANALYTICS_________________________________________

data <- iris
head(data) #first 6, head(data, 5) first 5
tail(data)#last 6
str(data)

#instead of use summary we can use min and max
min(data$Sepal.Length)
max(data$Sepal.Length)

range(data$Sepal.Length)

#standard dev---------------
sd(data$Sepal.Length)

#variance-------------------
var(data$Sepal.Length)

#mean----------------------
mean(data$Sepal.Length)

#median--------------------
median(data$Sepal.Length)

#summary-----------------------
summary(data$Sepal.Length)

#_________________________Array________________________________________
#quantile-------------------------------
a<-c(170.2, 181.5, 188.9, 163.9, 166.4, 163.7, 160.4, 175.8, 181.5)
quantile(a)

#specific quantile-----------------
quantile(a, 0.25)

#interquantile-----------------------
IQR(a)

#sort---------------------------
sort(a)

#num of rowa------------------
nrow(data) 
nrow(data['Sepal.Length'])

#count num of col----------------
ncol(data)

#histogram of sepal length
hist(data$Sepal.Length,
     main = "Histogram of Sepal Length",
     xlab = "Sepal Length (cm)",
     ylab = "Frequency",
     col = "lightblue",
     border = "black")

#boxplot
boxplot(Sepal.Length ~ Species,
        data = iris,
        main = "Sepal Length by Species",
        xlab = "species",
        ylab = "Sepal Length (cm)",
        col = c("lightpink", "lightyellow", "grey"))

#scatterplot
plot(iris$Sepal.Length, iris$Sepal.Length,
     main = "Sepal Length vs Petal Length",
     xlab = "Sepal Length",
     ylab = "Petal Length",
     col = as.numeric(iris$Species),
     pch = 19)
legend("topleft",
       legend = levels(iris$Species),
       col = 1:3,
       pch = 19)
