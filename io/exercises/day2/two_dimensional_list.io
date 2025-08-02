/*
    Write a prototype for a two-dimensional list.
    The dim(x, y) method should allocate a list of y lists that are x elements long.
    set(x, y, value) should set a value, and get(x, y) should return that value.
*/

TwoDimensionalList := Object clone

TwoDimensionalList dim := method(x, y,
    twoDimensionalList := List clone
    for(i, 1, y,    // from docs we could use range e.g. 1 to(x) foreach(i, ...), but it does not work
        list := List clone
        for(j, 1, x,
            list append("")
        )
        twoDimensionalList append(list)
    )
    self list := twoDimensionalList
    self
)

TwoDimensionalList set := method(x, y, value,
    self list at(y) atPut(x, value)
)

TwoDimensionalList get := method(x, y, value,
    self list at(y) at(x)
)

TwoDimensionalList transpose := method(
    x := self list at(0) size
    y := self list size
    transposedList := TwoDimensionalList clone
    transposedList dim(y,x)
    for(i, 1, y,
        for(j, 1, x,
            value := self get(j-1,i-1)
            transposedList set(i-1, j-1, value)
        )
    )
    transposedList
)


mylist := TwoDimensionalList clone dim(5,3);
mylist list println;
mylist set(1,1,"Hi!");
mylist list println;
mylist get(1,1) println;
mylist transpose() list println;
