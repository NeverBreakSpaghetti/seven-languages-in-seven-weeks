/*
 * Sort the elements of a list.
*/

sort(List, SortedList) :- insertionSort(List, [], SortedList).

insertionSort([], SortedList, SortedList).
insertionSort([Head|Tail], SortingList, SortedList) :-
    insertOnOrder(Head, SortingList, ListWithInsertedValue),
    insertionSort(Tail, ListWithInsertedValue, SortedList).

insertOnOrder(Number, [], [Number]).
insertOnOrder(Number, [Head|Tail], [Number,Head|Tail]) :- Number =< Head.
insertOnOrder(Number,  [Head|Tail], [Head|SortedTail]) :-
    Number > Head,
    insertOnOrder(Number, Tail, SortedTail).

test(Title, Function, Expected) :-
    (call(Function) ->
        Function =.. [_,_,Result],
        (Result == Expected ->
            format('✓ ~w: PASS~n', [Title])
        ;   format('✗ ~w: FAIL~n - Expected: ~w~n - Received: ~w~n', [Title, Expected, Result])
        )
    ;   format('✗ ~w: FAIL (failed to execute function)~n', [Title])
    ).

run_tests :-
    test('Sort single element list', sort([1], SortedList1), [1]),
    test('Sort multi element array', sort([2,1,3], SortedList2), [1,2,3]),
    write('Every test pass'), nl.