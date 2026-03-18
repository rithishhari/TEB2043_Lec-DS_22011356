#---1. mtcars dataset
data("mtcars")
head(mtcars)
tail(mtcars)
model <- lm(mpg ~ hp + wt + cyl, data = mtcars)
summary(model)

#split data into train and test sets 
data.train<- mtcars[1:22,] 
data.test<- mtcars[23:32,]

#modelling 
relation <-lm(mpg ~ hp +wt+cyl, data = data.train) 
summary(relation)

# Prediction 
a <- data.frame(hp = data.test$hp, wt = data.test$wt, cyl = data.test$cyl) 
result <- predict(relation, a) 
print(round(result, digits = 2)) 

#performance measurement
mape <- mean(abs((data.test$mpg - result)/ data.test$mpg )*100)
paste("The error - MAPE is ", round(mape, digit = 2), "%")

#---2. Class Activity-------------------------------------------
y <- c(11,11,11,12,12,13,13,13,13,14)
x1 <- c(290,44,320,149,120, 137, 112, 27, 238, 274)
x2 <- c(9.2, 9.7, 16.6, 12.6, 11.5, 10.3, 11.5, 10.3, 12.6, 10.9)
x3 <- c(66, 62, 73, 74, 73, 76, 71, 76, 64, 68)

df <- data.frame(y, x1, x2, x3)
View(df)

model1 <- lm(y ~ x1 + x2 + x3, data = df)
summary(model1)

#split data into train and test sets 
data.train1<- mtcars[1:7,] 
data.test1<- mtcars[8:10,]

relation <- lm(y ~ x1 + x2 + x3, data = data.train1)
summary(relation)

# Prediction 
b <- data.frame(x1 = data.test1$x1, x2 = data.test1$x2, x3 = data.test1$x3) 
result1 <- predict(relation, b) 
print(round(result1, digits = 2)) 


