#A palindromic number reads the same both ways. 
#The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

#Find the largest palindrome made from the product of two 3-digit numbers.


#100*100 -> 999*999
#5-6 digits
#go through all
#10000 -> 998001

#assume while true that n1 & n2 dont need to go below 950
#*
n1 <- 999:900
n2 <- 999:900

i_fin = -1
j_fin = -1
n_fin = -1
#n = -1

#double for loop for n1 and n2

#loop through n1 from 999 to 100
for ( i in n1) {
  
  #loop through n2 from 999 to 100
  for ( j in n2) {
    if (i*j < n_fin) {
      next
    }
    
    n = i * j
    str1 <- toString(n)
    #str2 <- 
    str1 = strsplit(str1, character(0))
    print("")
    print(str1[[1]][1])
    print(str1[[1]][2])
    print(str1[[1]][3])
    print(str1[[1]][4])
    print(str1[[1]][5])
    print(str1[[1]][6])
    #assume 6 digits while n1/n2 minimum assumed 950
        if ( strtoi(str1[[1]][1])==strtoi(str1[[1]][6]) && strtoi(str1[[1]][2])==strtoi(str1[[1]][5]) && strtoi(str1[[1]][3])==strtoi(str1[[1]][4]) ) {
          n_fin = n
          i_fin = i
          j_fin = j
          print(i_fin)
          print(j_fin)
          print(n_fin)
          break
        } else {
          
        }
  }
  #if broken out of j loop before full cycle to 950 then break out of i loop with n
    if (j > 950) {
      break
    } else {
    }
}
print(i_fin)
print(j_fin)
print(n_fin)