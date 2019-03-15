#Example
#February → 83
#March → 51
#April → 52
#May → 31
#June → 42
#July → 41
#August → 63
#first digit is number of characters in string
#second digit is number of vowels in String

string_code<-function(){
  user_string<-readline("Enter a String to generate code: ")
  size<-nchar(user_string)
  
  vowels<-c("a","e","i","o","u")
  
  score<-0
  divided_string<-unlist(strsplit(user_string, split = ""))
  
  for(i in divided_string){
    for(j in vowels){
      if(i==j)
      {
        score<-score+1
      }
    }
  }
  paste(size,score)
}
