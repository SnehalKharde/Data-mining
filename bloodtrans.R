blood<-read.table("http://archive.ics.uci.edu/ml/machine-learning-databases/blood-transfusion/transfusion.data", sep=",",header=TRUE)
View(blood)

summary(blood)
colnames(blood)<-c('Recently','Frequency','Monetary(cc)','Time','donatedmar07')
colnames(blood)
View(blood)
#R (Recency - months since last donation),
#F (Frequency - total number of donation),
#M (Monetary - total blood donated in c.c.),
#T (Time - months since first donation), and
#a binary variable representing whether he/she donated blood in March 2007 (1 stand for donating blood; 0 stands for not donating blood).
head(blood)
colnames(blood)<-c('Monthsafter_Donation','TotalNo','Volume','Months_1stDonation','donatedMar07')
blood$Monthsafter_Donation[which(blood$Monthsafter_Donation>3)]
#donation camp is done before 3 months
nrow(blood)
(length(which(blood$Monthsafter_Donation >3))/nrow(blood))*100
#total % of people who can donate blood


       