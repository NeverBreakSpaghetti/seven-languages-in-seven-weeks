/*
 * Find the smallest element of a list.
*/

min([], inf).
min([Head|Tail], Min) :- minFold(Tail,Head,Min).

minFold([],Min,Min).
minFold([Head|Tail],PreviousMin, Min) :-
    (Head < PreviousMin ->
        minFold(Tail, Head, Min)
    ;   minFold(Tail, PreviousMin, Min)
    ).

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
    test('Min element in single element list', min([42], Min1), 42),
    test('Min element in a list with more elements', min([2,1,3], Min2), 1),
    /* it should be more idiomatic make it fail because the predicate on a empty list make no sense*/
    test('Min element in an empty list', min([], Min3), inf),
    write('Test execution finished'), nl.