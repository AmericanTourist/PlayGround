## This function takes in a number n and finds the nth 
## palindrome and prints it out for the user
nth_palindrome <- function(n){
  
  # Current number of palindromes
  current_pal<-10
  
  # Maximum numbers to cycle through, this is the upper limit to set
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
    
    # allows the check to continue
    continue<-TRUE
    
    # while the right digit is not the same as the left or less, and while there are matches in the outer
    # digits so far, continue
    while(k>1 && k>j && continue==TRUE){
      
      # j is the position on the left
      j<-length(digits)-k+1
      
      # if j and k values are a match, set the palindrome as temporarily true
      if(digits[j]==digits[k]){
        match<-TRUE
      }
      
      # else if the values are not a match, then don't keep checking in the while loop
      else{
        match<-FALSE
        continue<-FALSE
      }
      k<-k-1
    }
    
    # if it found a palindrome, increase the current palindrome count by one
    if(match==TRUE){
      
      current_pal<- current_pal +1
      if(current_pal==n){
        return (digits)
      }
      print(digits)
    }
   }
}