#---1. find the intercept--------------------------------------------------------
#height 
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)

#weight
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

# Apply the lm() function
relation <- lm(y~x)
print(relation)

#---2. find height of person 189--------------------------------------------------
x_test <- data.frame(x = 189)
result <- predict(relation, x_test)
print(round(result, digit = 2))


#---3. plot the chart------------------------------------------------------------
plot(x,y,col = "blue", main = "Height & Weight Regression", abline(lm( y~ x)), 
pch = 16, xlab= "Height in cm", ylab = "Weight in kg")


#simple linear regression
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131) 
#data of weight 
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48) 
#Creating data frame 
data1= data.frame(x,y)

#---4. splitting data into training and testing---------------------------------------------------
data1_train<-data1[1:7,] 
data1_test<-data1[8:10,] 
# Apply the lm() function 
relation <- lm(y~x, data1_train) 
print(relation)

#make prediction
x_text <- data.frame(x= data1_test$x) 
result <-  predict(relation,x_text) 
print(result)

#measure performance
actuals_preds <- data.frame(cbind(actuals=data1_test$y, predicteds=result))
mape <- mean(abs(actuals_preds$actuals - actuals_preds$predicteds)/ actuals_preds$actuals) *100
paste("The error - MAPE is ", round(mape, digit = 2), "%")

#case study
#happiness income file
df <- read.csv("income_happiness.csv")
train_indices <- sample(1:nrow(df), size = 0.8 *nrow(df))
train_data <- df[train_indices, ]
test_data <- df[-train_indices, ]

relation <- lm(happiness~income, data=train_data) 
print(relation)

#---5. Class Activity--------------------------------------------------------------------
x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
y <- c(2500, 2700, 3000, 3400, 3900, 4400, 5000, 5600, 6200, 6900)
df <- data.frame(x, y)

# Apply the lm() function
relation <- lm(y~x)
print(relation)

#splitting data into training and testing---------------------------------------------------
data_train<-df[1:7,] 
data_test<-df[8:10,]

# Apply the lm() function 
relation <- lm(y~x, data_train) 
print(relation)

plot(df$x, df$y,
     main = "Monthly Salary by Experience Year",
     xlab = "Experience Year",
     ylab = "Monthly Salary",
     col = "blue",
     pch = 19)

abline(relation, col = "red", lwd = 2)