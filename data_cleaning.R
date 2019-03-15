library("ggplot2")
library("plyr")
library("stringr")
library("SnowballC")
library("tm")
book<-c("Data mining & data warehousing",'Data Mining: Introduction','Data Mining: Concepts',"Introduction to Data Mining Concepts","Linear Algebra for real world","Data mining","Data warehousing in the real world","Text Mining: Techniques","Data warehousing fundamentals")
length(book)
book<-sort(book)

book<-tolower(book)
book<-removePunctuation(book)

docs1<-unique(unlist(strsplit(book, split = " ")))
#remove duplicates and split vector into words

length(docs1)
docs1<-removeWords(docs1,c("the","for","in","","to"))
docs1<-docs1[docs1 != ""]
#remove ""

length(docs1)
keywords<-sort(docs1)
query<-c("Data","Mining","Concepts")
query<-tolower(query)
is.element(query,keywords)
y<-which(is.element(keywords,query)==TRUE)
xy<-numeric(length(keywords))
xy[y]<-1
xy
