#not above 4 million, sum of even valued Fibonacci terms
fib1 = 0
fib2 = 1
fibTemp = -1
sum = fib1

while ( (fib2) <= 4000000 ) 
{
  
  #add fib2 to sum if fib2 is even
  if (fib2 %% 2 == 0) {
    sum = sum + fib2
  } else {
  }
  #store the value of the new fib number
  fibTemp = fib1 + fib2
  #assign the value of fib2 to fib1  
  fib1 = fib2
  #assign this value to fib2
  fib2 = fibTemp
  #reset temporary variable
  fibTemp = -1
  #print(fib1)
  print(fib2)
}

sum
