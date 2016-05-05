## This function takes in a number n and finds the nth 
## palindrome and prints it out for the user
nth_palindrome <- function(n){
  
  # Current number of palindromes
  current_pal<-10
  
  # Maximum numbers to cycle through
  max_num <- 100000
  
  # Find the number of digits in the number
  num_digits <- nchar(n)
  
  # Cycle through the numbers and check if it is a palindrome, start at 11
  for(i in 0:max_num){
    
    # Initially no palindrome
    match<-FALSE
    # Break up the number into separate digits
    digits<-as.numeric(strsplit(as.character(i), "")[[1]])
    #print(length(digits))
    
    # k is the position on the right
    k<-length(digits)
    j<-0
    
    continue<-TRUE
    while(k>1 && k>j && continue==TRUE){
      
      # j is the position on the left
      j<-length(digits)-k+1
      
      # if j and k values are a match, set the palindrome as temporarily true
      if(digits[j]==digits[k]){
        match<-TRUE
        }
      else{
        match<-FALSE
        continue<-FALSE
      }
      k<-k-1
    }
    if(match==TRUE){
      
      current_pal<- current_pal +1
      if(current_pal==n){
        return (digits)
      }
      print(digits)
    }
    #if(length(digits)>1){
      #if(digits[1]==digits[2]){
        #print(digits)
      #}
    #}
    #if(digits[1]==length(digits))
    #cycle through and check if digits match
    #for(k in 1:length(i)){
      #print(k)
      #if(digits[1]==digits[k]){
       # print(k)
       # print(digits)
     # }
     # else
       # print("Not a match")
    #}
    
    # Print out what the digits are and what the length is
    #message("First digit:", digits[1], " Second digit:", digits[2], "Length:", length(digits))
  }
}