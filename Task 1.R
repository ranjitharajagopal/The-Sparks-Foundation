#THE SPARK FOUNDTAION: Predict the percentage of an student based on the no. of study hours using supervised learning
# TASK-1
#NAME: RANJITHA R 

# Installing of Packages

install.packages("readr")
install.packages("ggplot2")
library(readr)
library(ggplot2)

#loading given file
data<-read.csv("C:\\Users\\Ranjitha\\Downloads\\Task 1.csv")
View(data) # to view dataset 

# Linear Regression is approach to modeling the relationship btw a scalar response and one or orexplanatory variables#

#applying linear regression
model<- lm(Scores~Hours,data)
model

#plotting the data

plot(data$Hours,data$Scores)
plot(data)
abline(model, col="red")

#predicting the score if a student studies for 9.25 hrs/ day?

a<-data.frame(Hours=9.25)
predictedscore <-predict(model,a)
print(" no of Hours = 9.25")
print(predictedscore)

# Conclusion 
#If a student studies for 9.25 hrs/day, According to the model, predicted score is 92.90#