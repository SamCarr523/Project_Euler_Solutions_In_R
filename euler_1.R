# Project Euler Problem 1
# Title: Multiples of 3 and 5
# URL: https://projecteuler.net/problem=1


# Description: Find the sum of all the multiples of 3 or 5 below 1000.


# All multiples of 3 below 1000.
threes <- seq(3, 999, 3)
# All multiples of 5 below 1000.
fives <- seq(5, 999, 5)

# Make a vector of the multiples of three and five.
threes_and_or_fives <- c(threes, fives)

# Make a logical vector of duplicates.
logical_vector_dup <- duplicated(threes_and_or_fives)

# Make a logical vector of non-duplicates.
logical_vector_not_dup <- !logical_vector_dup

# Convert from logical vector to vector of indices.
indices_not_dup <- which(logical_vector_not_dup)

# Convert from indices to values.
values_not_dup <- threes_or_fives[indices_not_dup]

# Compute the sum.
sum <- sum(values_not_dup)

# Print the sum.
print(sum)