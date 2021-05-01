# Project Euler Problem 4
# Title: Largest Palindrome Product
# URL: https://projecteuler.net/problem=4

# Description: A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99. 
# Find the largest palindrome made from the product of two 3-digit numbers.


# Assume that v doesn't need to go below 100 (always has six digits).
v <- 999:1

n_max <- -1
palindromes = vector()

# Loop through v from 999 to 100
for (i in v) {
  
  # Loop from i to 100
  for (j in i:100) {
    
    # Product is assigned to 'n'.
    n = i * j
    
    # Skip if 'n' is smaller than the largest current palindrome.
    if (n < n_max) {
      next
    }
    
    # Convert product to a string.
    str1 <- toString(n)
    
    # Convert string to a character vector.
    str1 <- strsplit(str1, character(0))[[1]]

    # Check if not a six-digit number. Skip to the next i if true.
    if(length(str1) != 6) {
      break
    }
    
    # Check if the number is a palindrome. Skip to the next i if true.
    if ( strtoi(str1[1])==strtoi(str1[6]) && strtoi(str1[2])==strtoi(str1[5]) && strtoi(str1[3])==strtoi(str1[4]) ) {
      
      # If n is larger than the current largest palindrome product, assign it as the new n_max.
      if ( n > n_max) {
        
        n_max <- n
        
      }
      
      # Add n to the vector of palindrome products.
      palindromes <- c(palindromes, n)
      
    }
    
  }
  
}

# Print the largest palindrome product.
print(max(palindromes))
