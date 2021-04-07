#sum of square, minus square of sum: 100
hund1 = 1:100
hund1 = hund1 ^ 2
hund1 = sum(hund1)
hund1

hund2 = 1:100
hund2 = sum(hund2)
hund2 = hund2 ^ 2
hund2

ans = abs(hund1 - hund2)
ans