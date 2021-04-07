# In the 20×20 grid below, four numbers along a diagonal line have been marked in red.

# The product of these numbers is 26 × 63 × 78 × 14 = 1788696.

# What is the greatest product of four adjacent numbers in the same direction 
# (up, down, left, right, or diagonally) in the 20×20 grid?


# 1. Turn the 20 lines into a 20*20 matrix

grid_str = "08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08
49 49 99 40 17 81 18 57 60 87 17 40 98 43 69 48 04 56 62 00
81 49 31 73 55 79 14 29 93 71 40 67 53 88 30 03 49 13 36 65
52 70 95 23 04 60 11 42 69 24 68 56 01 32 56 71 37 02 36 91
22 31 16 71 51 67 63 89 41 92 36 54 22 40 40 28 66 33 13 80
24 47 32 60 99 03 45 02 44 75 33 53 78 36 84 20 35 17 12 50
32 98 81 28 64 23 67 10 26 38 40 67 59 54 70 66 18 38 64 70
67 26 20 68 02 62 12 20 95 63 94 39 63 08 40 91 66 49 94 21
24 55 58 05 66 73 99 26 97 17 78 78 96 83 14 88 34 89 63 72
21 36 23 09 75 00 76 44 20 45 35 14 00 61 33 97 34 31 33 95
78 17 53 28 22 75 31 67 15 94 03 80 04 62 16 14 09 53 56 92
16 39 05 42 96 35 31 47 55 58 88 24 00 17 54 24 36 29 85 57
86 56 00 48 35 71 89 07 05 44 44 37 44 60 21 58 51 54 17 58
19 80 81 68 05 94 47 69 28 73 92 13 86 52 17 77 04 89 55 40
04 52 08 83 97 35 99 16 07 97 57 32 16 26 26 79 33 27 98 66
88 36 68 87 57 62 20 72 03 46 33 67 46 55 12 32 63 93 53 69
04 42 16 73 38 25 39 11 24 94 72 18 08 46 29 32 40 62 76 36
20 69 36 41 72 30 23 88 34 62 99 69 82 67 59 85 74 04 36 16
20 73 35 29 78 31 90 01 74 31 49 71 48 86 81 16 23 57 05 54
01 70 54 71 83 51 54 69 16 92 33 48 61 43 52 01 89 19 67 48"

grid_str

grid_str = gsub("\n", " ", grid_str)  

grid_str

grid_str = strsplit(grid_str, " ")

grid_str

grid_str = grid_str[[1]]

grid_str

# 2. Replace preceeding 0's

# Learn regular expressions here: 
#   https://www.jdatalab.com/data_science_and_data_mining/2017/03/20/regular-expression-R-part11.html

for (j in 1:400) {
  
  grid_str[j] = gsub("^0", "", grid_str[j])  
  
}

grid_str

grid_int = rep(-1, 400)

grid_int

for (i in 1:400) {
  
  grid_int[i] = strtoi(grid_str[i])
  
}

grid_int


grid_matrix = matrix(
  grid_int,
  nrow = 20,
  ncol = 20,
  byrow = TRUE)

grid_matrix

grid_matrix[21]

# What is the greatest product of four adjacent numbers in the same direction 
# (up, down, left, right, or diagonally) in the 20x20 grid?


# 3. For each of the 400 elements, find if exists, the 3 elements to the right and the three elements
# below and the product for each. Then find the maximum product.

vert_product_matrix = matrix(rep(-2, 289), nrow = 17, ncol = 17, byrow = TRUE)
horiz_product_matrix = matrix(rep(-2, 289), nrow = 17, ncol = 17, byrow = TRUE)
vert_product_matrix
horiz_product_matrix

NESW_product_matrix = matrix(rep(-2, 289), nrow = 17, ncol = 17, byrow = TRUE)
SENW_product_matrix = matrix(rep(-2, 289), nrow = 17, ncol = 17, byrow = TRUE)
NESW_product_matrix
SENW_product_matrix

for (i in 1:17) {
  
  #i = row
  print(i)
  
  for (j in 1:17) {
    
    #N/A's present *
    #j = row
    print(grid_matrix[(i-1)*20 + j])
    vert_product_matrix[(i-1)*20 + j] <- grid_matrix[(i-1)*20 + j]*grid_matrix[(i)*20 + j]*grid_matrix[(i+1)*20 + j]*grid_matrix[(i+2)*20 + j]
    horiz_product_matrix[(i-1)*20 + j] <- grid_matrix[(i-1)*20 + j]*grid_matrix[(i-1)*20 + (j+1)]*grid_matrix[(i-1)*20 + (j+2)]*grid_matrix[(i-1)*20 + (j+3)]
    SENW_product_matrix[(i-1)*20 + j] <- grid_matrix[(i-1)*20 + j]*grid_matrix[(i)*20 + (j+1)]*grid_matrix[(i+1)*20 + (j+2)]*grid_matrix[(i+2)*20 + (j+3)]
  
  }
  
}


for (i in 20:4) {
  
  #i = row
  print(i)
  
  for (j in 1:17) {
    
    #N/A's present *
    #j = row
    print(grid_matrix[(i-1)*20 + j])
    #vert_product_matrix[(i-1)*20 + j] <- grid_matrix[(i-1)*20 + j]*grid_matrix[(i)*20 + j]*grid_matrix[(i+1)*20 + j]*grid_matrix[(i+2)*20 + j]
    #horiz_product_matrix[(i-1)*20 + j] <- grid_matrix[(i-1)*20 + j]*grid_matrix[(i-1)*20 + (j+1)]*grid_matrix[(i-1)*20 + (j+2)]*grid_matrix[(i-1)*20 + (j+3)]
    NESW_product_matrix[(i-1)*20 + j] <- grid_matrix[(i-1)*20 + j]*grid_matrix[(i-2)*20 + (j+1)]*grid_matrix[(i-3)*20 + (j+2)]*grid_matrix[(i-4)*20 + (j+3)]
      
  }
  
}

#N/A's present
vert_product_matrix
horiz_product_matrix
SENW_product_matrix
NESW_product_matrix

# From https://stackoverflow.com/questions/15773189/remove-na-nan-inf-in-a-matrix : 
#   "replace all non-finite values with 0" and "m[!is.finite(m)] <- 0"
# !isfinite returns the indices of the non finite values in the matrix/array/?

vert_product_matrix[!is.finite(vert_product_matrix)] <- 0
horiz_product_matrix[!is.finite(horiz_product_matrix)] <- 0
SENW_product_matrix[!is.finite(SENW_product_matrix)] <- 0
NESW_product_matrix[!is.finite(NESW_product_matrix)] <- 0

vert_product_matrix
horiz_product_matrix
SENW_product_matrix
NESW_product_matrix

max_product = -3

# Error in if (i > max_product) { : missing value where TRUE/FALSE needed 

for (i in vert_product_matrix) {
  
  if (i > max_product) {
    
    max_product = i
  }
  
}

for (j in horiz_product_matrix) {
  
  if (j > max_product) {
    
    max_product = j
  }
  
}

for (k in SENW_product_matrix) {
  
  if (k > max_product) {
    
    max_product = k
  }
  
}

for (l in NESW_product_matrix) {
  
  if (l > max_product) {
    
    max_product = l
  }
  
}

max_product