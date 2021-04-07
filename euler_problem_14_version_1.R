# Longest Collatz sequence
# 
# Problem 14
# 
# The following iterative sequence is defined for the set of positive integers:
#   
#   n ??? n/2 (n is even)
# n ??? 3n + 1 (n is odd)
# 
# Using the rule above and starting with 13, we generate the following sequence:
#   13 ??? 40 ??? 20 ??? 10 ??? 5 ??? 16 ??? 8 ??? 4 ??? 2 ??? 1
# 
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
# 
# Which starting number, under one million, produces the longest chain?
#   
#   NOTE: Once the chain starts the terms are allowed to go above one million.


start <- 1000000
chain_length <- 0
max_chain_length <- -1
number_longest_chain <- -1

# Input a number
# Add 1 to chain length each time
# Apply iterative function and return 
iterate <- function (n, cl) {
  chain_length <- chain_length + 1
  if (n == 1) {
    return(c(-1,(cl+1)))
  } else if (n %% 2 == 0) {
    return(iterate((n/2),cl))
  } else {
    return(iterate(((3*n)+1),cl+1))
  }
}

# Loop through by brute force
for (i in start:1) {
  # Call iterate for each
  chain_length <- iterate(i, chain_length)[2]
  # If number's chain length is the longest
  if (chain_length > max_chain_length) {
    max_chain_length <- chain_length
    number_longest_chain <- i
  }
  # Reset chain length
  chain_length <- 0
}

print(number_longest_chain)
print(max_chain_length)
