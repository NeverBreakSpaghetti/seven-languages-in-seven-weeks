/*
A Fibonacci sequence starts with two 1s. Each subsequent number is the sum of the two numbers that came before:
1, 1, 2, 3, 5, 8, 13, 21, and so on.
Write a program to find the nth Fibonacci number. fib(1) is 1, and fib(4) is 3.
As a bonus, solve the problem with recursion and with loops.
*/

DumbFibonacci := Object clone
DumbFibonacci fib := method(fibonacciIndex,
    currentNumber := 0
    nextNumber := 1
    i := 0
    while( i < fibonacciIndex,
        temp := nextNumber
        nextNumber = currentNumber + temp
        currentNumber = temp
        i = i + 1
    )
    currentNumber
)

writeln("Iterative")
DumbFibonacci fib(1) println;
DumbFibonacci fib(2) println;
DumbFibonacci fib(3) println;
DumbFibonacci fib(4) println;
DumbFibonacci fib(5) println;
DumbFibonacci fib(6) println;

RecursiveFibonacci := Object clone
RecursiveFibonacci fib := method(fibonacciIndex,
    if(fibonacciIndex < 2,
        fibonacciIndex,
        self fib(fibonacciIndex-1) + self fib(fibonacciIndex-2)
    )
)

writeln("------------------")
writeln("Recursive")
RecursiveFibonacci fib(1) println;
RecursiveFibonacci fib(2) println;
RecursiveFibonacci fib(3) println;
RecursiveFibonacci fib(4) println;
RecursiveFibonacci fib(5) println;
RecursiveFibonacci fib(6) println;