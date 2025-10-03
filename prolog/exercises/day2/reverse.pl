/*
 * Reverse the elements of a list.
*/

reverse(List, ReversedList) :- reverseWithAccumulator(List,[],ReversedList).

reverseWithAccumulator([],Accumulator,Accumulator).
reverseWithAccumulator([Head|Tail],Accumulator, ReversedList) :-
    reverseWithAccumulator(Tail,[Head|Accumulator], ReversedList).

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
    test('Reverse single element list', reverse([1], ReversedList1), [1]),
    test('Reverse multi element array', reverse([1,2,3], ReversedList2), [3,2,1]),
    write('Every test pass'), nl.