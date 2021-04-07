# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which:

#                     a^2 + b^2 = c^2

# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
# 
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.


#     three natural numbers   &   a < b < c    &    a^2 + b^2 = c^2    &     a + b + c = 1000

# find abc.

# 1. three natural numbers   &   a < b < c    &    a + b + c = 1000. Therefore:
#   a: (1, 2, 997) 1 <-> 332 (332, 333, 335)
#   b: (1, 2, 997) 2 <-> 499 (1, 499, 500)
#   c: (332, 333, 335) 332 <-> 997 (1, 2 , 997)

# 2. Every combination of a, b and c into: a^2 + b^2 = c^2 
# Three for loops through a, b and c options

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

print(pythTri[1] * pythTri[2] * pythTri[3])
