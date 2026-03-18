#Load Iris Dataset
data(iris)
# View first few rows
head(iris)
# Structure of dataset
str(iris)
#Normalization to Sepal.Length Variable
iris$Sepal.Length_norm <- (iris$Sepal.Length - min(iris$Sepal.Length)) / (max(iris$Sepal.Length) - min(iris$Sepal.Length))

head(iris)
iris$Sepal.Length 
#calculate mean 
mean_value <- mean(iris$Sepal.Length)
mean_value

#calculate standard deviation 
sd_value <- sd(iris$Sepal.Length) 
sd_value

#calculate manually 
z_manual <- (iris$Sepal.Length  - mean_value) / sd_value 
z_manual 

#Standardized entire column 
iris$Sepal.Length_z_manual <- (iris$Sepal.Length - mean_value) / sd_value 
head(iris)

data(iris) 
head(iris) 

#View values of catagories/level 
levels(iris$Species)

#Convert Categorical to numeric 
iris$Species_numeric <- as.numeric(iris$Species) 
head(iris)
