# Project Euler Problem 6
# Title: Sum square difference
# URL: https://projecteuler.net/problem=6

# Description: Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

# Sum of the squares.
sum_squares = 1:100
sum_squares = sum_squares ^ 2
sum_squares = sum(sum_squares)


# Square of sum.
square_of_sum = 1:100
square_of_sum = sum(square_of_sum)
square_of_sum = square_of_sum ^ 2

# Sum of squares minus square of the sum.
ans = abs(sum_squares - square_of_sum)
print(ans)

# Answer is 25164150