# Project Euler Problem 2
# Title: Even Fibonacci number
# URL: https://projecteuler.net/problem=2

# Description: By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

# Initialise variables.
fib1 = 0
fib2 = 1
fibTemp = -1
sum = fib1

# Loop until reaching 4 million.
while ( (fib2) <= 4000000 ) 
{
  # Add fib2 to the sum if it is even.
  if (fib2 %% 2 == 0) {
    sum = sum + fib2
  } 
  
  # Store the value of the new fib number.
  fibTemp = fib1 + fib2
  
  # Update the fib values.
  fib1 = fib2
  fib2 = fibTemp
  
  # Reset temporary variable.
  fibTemp = -1
}

# Print the sum.
print(sum)
