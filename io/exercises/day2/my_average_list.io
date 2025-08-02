/*
    Add a slot called myAverage to a list that computes the average of all the numbers in a list.
    What happens if there are no numbers in a list?
    (Bonus: Raise an Io exception if any item in the list is not a number.)
*/


MyList := List clone
MyList myAverage := method(
    if(self size == 0) then (Exception raise("list must has elements"))
    sum := 0
    self foreach(n,
        if(n type != "Number") then (Exception raise("list must contains only numbers"))
        sum = sum + n
    )
    sum / self size
)

MyList append(1, 2, 3, 4);
MyList myAverage println;

