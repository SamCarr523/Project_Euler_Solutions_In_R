# Project Euler Problem 3
# Title: Largest Prime Factor
# URL: https://projecteuler.net/problem=3

# Description: What is the largest prime factor of the number 600851475143 ?

# Initialise variables.
no = 600851475143
i = 2

# Loop through values of 'i' up to 'no'.
while (i <= no) {
  
  # While 'no' divides evenly by 'i' do:
  while(no %% i == 0) {
    
    # Divide number by i.
    no = no / i
    
    # Set new largest prime factor.
    lpf = i
  }
  
  # Increment i.
  i = i + 1
}

# Print largest prime factor.
print(lpf)
