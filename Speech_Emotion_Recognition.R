library(stringr)
library(kernlab)
data1 <- read.csv("path-for-csv-file/filename.csv")

#number of lines to be used to train the data
train<-data1[1:1000,]
#number of lines to test data
test<-data1[3001:3009,]

#train SVM algorithm 
classifier <- ksvm(sentiment~., data = train, kernel = "rbfdot")


prediction<-predict(classifier,test)

length(prediction)
length(test)
View(prediction)

table(prediction, test$sentiment)
match = prediction == test$sentiment
table(match)
prop.table(table(match))

mean(match)*100
match<-table(prediction,test$sentiment)

mean(match)*100
View(match)
prediction[1:10]
test$sentiment[1:10]

#match<- predict == test$sentiment

View(match)

ncol(train_data1)
View(train_data1)
column<-train_data1[,2]

test <- str_replace_all(column,"[:punct:]","")
test
train_data1[,2]<-test 
View(train_data1)
dim(train_data1)
training <- train_data1[1:7500,]
classifier <- ksvm(sentiment~., data = training, kernel = "vanilladot")
test_data1<-train_data1[7501:9000,]
View(test_data1)

Prediction <- predict(classifier,test_data1)
