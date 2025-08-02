// Write a program to add up all of the numbers in a two-dimensional array.

Sum := Object clone
Sum total := method(twoDimensionalArray,
    totalAmount := 0
    twoDimensionalArray foreach(array, totalAmount = totalAmount + array sum)
    totalAmount
)

twoDimensionalArray := list(list(1,2),list(3))
Sum total(twoDimensionalArray) println