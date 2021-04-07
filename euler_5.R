#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

#loop through all numbers starting at 2521
#nested loop testing if number is evenly divisible by 1-20 
no = 2521
divisors = 20:1
evDi = FALSE

while (TRUE) {
  
  print("while")
  #loop through divisors
  for (i in divisors) {
    
     
     #divide by divisor
     if (no %% i != 0) {
       
        #then break loop with evDi = false to start with next no = no + 1 
        evDi = FALSE
        break
     } else {
       
       #if i == 1 then break both loops, set number, return number
       evDi = TRUE
     }
  }
  
  
  if (evDi == FALSE) {
    
    #was not evenly divisible so try next number
    no = no + 1
    next
  } else {
    
    #evenly divisible so break out of while loop with number on the first case found which will be smallest
    break
  }
}
print(no)