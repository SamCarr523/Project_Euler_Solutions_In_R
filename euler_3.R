#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?
#start with 2 and repeat, then with 3 and repeat, etc. until i == no

#poor solution below... Instead should stop when fully factorised, 
#not when all numbers up to noStart have been tried

noStart = 600851475143
no = noStart
i = 2
lpf = -1
while (i <= noStart) {
  while(no %% i == 0) {
    no = no / i
    lpf = i
  }
  i = i + 1
}
print(lpf)
print("Completed")