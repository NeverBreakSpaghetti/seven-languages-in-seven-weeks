// Write a program to add up all of the numbers in a two-dimensional array.

Sum := Object clone
Sum total := method(twoDimensionalArray,
    totalAmount := 0
    i := 0
    while(i < twoDimensionalArray size,
        array := twoDimensionalArray at(i)
        totalAmount = totalAmount + array sum
        i = i + 1
    )
    totalAmount
)

twoDimensionalArray := list(list(1,2),list(3))
Sum total(twoDimensionalArray) println