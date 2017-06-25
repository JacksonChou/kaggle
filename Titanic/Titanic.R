#Kaggle Titanic Project

setwd("E:/Users/Jackson/Dropbox/R stuff/Kaggle")


trainData <- read.csv('train.csv', sep=",", header=T)
testData <- read.csv('test.csv', sep=",", header=T)

summary(trainData)
head(trainData)


#Plotting density of Age and Fare
plot(density(trainData$Age, na.rm =T))
plot(density(trainData$Fare, na.rm =T))


#Survival rate by sex, which gender has higher survival rate?
#Intuition is that "Women and children first" to board lifeboats allows for higher rate

counts <- table(trainData$Survived, trainData$Sex)
barplot( counts, xlab = "Gender", ylab = "Number of People", main = "Survived and deceased between male and female")

counts[2]/(counts[1] + counts[2])
counts[4]/(counts[3] + counts[4])

