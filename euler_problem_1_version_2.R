# Find the sum of all the multiples of 3 or 5 below 1000.

# All multiples of 3 below 1000 assigned to a vector
threes <- seq(3, 999, 3)
# All multiples of 5 below 1000 assigned to another vector
fives <- seq(5, 999, 5)

# Combine to make a vector of all multiples of either three or five.
threes_or_fives <- c(threes, fives)

# Make a logical vector indicating the indices of all numbers that are duplicates of both three and five.
logical_vector_dup <- duplicated(threes_or_fives)

# Method 1. WOrse.
indices_dup <- which(logical_vector_dup)
indices_not_dup <- -indices_dup

values_not_dup <- threes_or_fives[indices_not_dup]
sum(values_not_dup)

# Method 2. Better.

# Make a logical vector indicating the indices of all numbers that are not duplicates of both three and five.
logical_vector_not_dup <- !logical_vector_dup

# Convert from logical vector to indices.
indices_not_dup <- which(logical_vector_not_dup)

# Convert from indices to values.
values_not_dup <- threes_or_fives[indices_not_dup]
sum(values_not_dup)