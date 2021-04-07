# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

#no is from 1 to infinity (or as long as it takes to find the 10001st prime number)
no = 2

endPrime = 10001

minusEndPrime = -1 * endPrime

#one unchanged to make sure 10001 assigned
primeNos = -1:minusEndPrime

#initial position to be assigned to in primeNos array
primeIdx = 1

#check integers incrementally
while(TRUE) {
  
  #test if prime and return number and boolean to indicate if prime
  for (i in 1:no) {
    
    if (no %% i == 0) {
      if (i == 1) {
        
        next
        
      } else if (i == no) {
        
        #add prime number to array
        primeNos[primeIdx] = no
        
        #increment prime number array index
        primeIdx = primeIdx + 1
        
        #break onto next number to be checked if prime
        break
        
      } else {
        
        #not a prime number so dont add to prime array
        #break onto next number to be checked if prime
        break
        
      }
       
    }
    
  }
  
  
  #check if 10001st prime number assigned yet and end while loop if so
  if (primeIdx == endPrime + 1) {
    
    break
    
  } else {
  
    #increment number to be check if it is prime
    no = no + 1
    
  }
  
}

print(primeNos[endPrime])