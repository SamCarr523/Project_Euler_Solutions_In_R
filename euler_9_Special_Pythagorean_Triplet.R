# Project Euler Problem 9
# Title: Special Pythagorean triplet
# Description: A Pythagorean triplet is a set of three natural numbers, 
# a < b < c, for which:

#                     a^2 + b^2 = c^2

# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
# 
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.


# The following 4 points are therefore true:
# 1. a, b and c are natural numbers
# 2. a < b < c
# 3. a^2 + b^2 = c^2
# 4. a + b + c = 1000


# The following intervals can be deduced from points 1, 2 and 4:
#   a: (1, 2, 997) 1 <-> 332 (332, 333, 335)
#   b: (1, 2, 997) 2 <-> 499 (1, 499, 500)
#   c: (332, 333, 335) 332 <-> 997 (1, 2 , 997)

# Try every combination of a, b and c within the above intervals where 
# a^2 + b^2 = c^2. Use 3 for loops to do this.
pythTri = array(c(-1:-3), dim = c(3))

for (i in 1:332) {
  
  for (j in 2:499) {
   
    for (k in 332:997) {
    
      if (i^2 + j^2 == k^2 && i + j + k == 1000) {
        
        pythTri[1] <- i
        pythTri[2] <- j
        pythTri[3] <- k
        
      }
        
    } 
    
  }
  
}

# Print answer abc.
print(pythTri[1] * pythTri[2] * pythTri[3])

# Answer is 31875000.