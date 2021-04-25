# Project Euler Problem 5
# Title: Smallest Multiple
# URL: https://projecteuler.net/problem=5

# Description: 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
  

# Find product of all primes up to 20.
# Test all multiples of this number until one is found to be evenly divisible by all numbers up to 20.

# Initialise variables.
primes <- c(2, 3, 5, 7, 11, 13, 17, 19)
product <- prod(primes)
integers <- 1:1000
divisors <- 1:20
divisors <- divisors[! divisors %in% primes]
div_bool <- FALSE
product_factor <- -1
end_bool <- FALSE

# Incrementally test multiples of the product of all primes up to 20 inclusive.
for( i in integers ) {

    # div_bool will remain TRUE after second loop if number is evenly divisible by all divisors.
  div_bool = TRUE
  
  # Loop through divisors 1-20 and test number against each.
  for ( j in divisors ) {

    # Divide by divisor.
    if ( (i*product) %% j != 0 ) {
  
        # Break loop with div_bool = FALSE.
        div_bool = FALSE
        break
  
    }
    
  }

  if (div_bool == FALSE) {

    # Was not evenly divisible so try next number
    next

  } else {

    # Evenly divisible so break out of loop after assigning the answer.
    product_factor <- i
    break
    
  }
  
}

# Print number.
print(product_factor*product)

# Answer is 232792560.