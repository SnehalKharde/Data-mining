#contact.csv should have two coloumns
#Name     Number
contacts<-read.csv("contacts.csv")
contacts<-as.data.frame(contacts)
colnames(contacts)<-c("Name","Number")
contacts
i<-0
while(i<=length(contacts$Number)){
  primary<-contacts$Number[i]
  i<-i+1
  j<-i+1
  while(i+1<=length(contacts$Number)){
    if(contacts$Number[i]==contacts$Number[j])
    {
      name<-contacts$Name[j]
      print(name)
      number<-contacts$Number[j]
      print(number)
      print("is duplicate")
      j<-j+1
    }
    else{
      j<-j+1
    }
  }
}
