library("ggplot2")
library("plyr")
library("stringr")
library("SnowballC")
library("tm")
book<-c("Data mining & data warehousing",'Data Mining: Introduction','Data Mining: Concepts',"Introduction to Data Mining Concepts","Linear Algebra for real world","Data mining","Data warehousing in the real world","Text Mining: Techniques","Data warehousing fundamentals")
length(book)
book<-sort(book)
docs<-Corpus(VectorSource(book))
#corpus is collection of all information
#corpus is collection on text data
#corpus is from 'tm' package
summary(docs)
inspect(docs[2])

getTransformations()
docs<-tm_map(docs,tolower)
docs
inspect(docs[2])

#now everything is in lower case
docs<-tm_map(docs,removePunctuation)
docs
inspect(docs[2])
#remove characters like & : etc

dtm<-DocumentTermMatrix(docs)
dtm
#display frequency of each term as per docs
m<-as.matrix(dtm)
m
v<-sort(colSums(m),decreasing=TRUE)
v
#sort in decreasing as per frequency of term
words<-names(v)
d<-data.frame(word=words,freq=v)
d
wordcloud(d$word,d$freq,min.freq=1)
