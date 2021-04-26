# Project Euler Problem 7
# Title: 10001st Prime
# Source URL: https://projecteuler.net/problem=7

# Description: By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?


# Initialise variables.
integers <- 14:150000
primes <- c(2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97 )

# Remove the multiples of the know prime numbers.
for ( i in primes ) {
  
  prime_multiples <- seq(i, integers[length(integers)], i)
  integers <- integers[ !integers %in% prime_multiples ]
  
}

# For each remaining integer, test if prime and add to vector if it is.
for ( j in integers ) {
  
  div_bool <- FALSE
  
  for ( k in 2:(j-1) ) {
    
    if ( j %% k == 0 ) {
      
      div_bool <- TRUE
      break
      
    }
    
  }
  
  # If prime.
  if ( div_bool == FALSE ) {
    
    primes <- c(primes, j)
    
  }
  
}

# Print primes.
print(primes)