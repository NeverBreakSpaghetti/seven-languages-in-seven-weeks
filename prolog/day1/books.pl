/*
    * • Make a simple knowledge base. Represent some of your favorite books and authors.
    * • Find all books in your knowledge base written by one author.
*/

wroteBook(martin, clean_code).
wroteBook(martin, clean_architecture).
wroteBook(beck, extreme_programming_explained).
wroteBook(beck, test_driven_development_by_example).
wroteBook(beck, refactoring).
wroteBook(beck, implementation_patterns).
wroteBook(beck, tidy_together).
wroteBook(beck, planning_extreme_programming).
wroteBook(fowler, planning_extreme_programming).

bookWroteByAuthor(Autor, Books) :-
    findall(Book, wroteBook(Autor, Book), Books).

test(Title, Function) :-
    (call(Function) ->
        format('✓ ~w: PASS~n', [Title])
    ;   format('✗ ~w: FAIL~n', [Title])
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
    test('Uncle Bob book', wroteBook(martin, clean_code)),
    test(
        'All Beck books',
        bookWroteByAuthor(beck, Books),
        [extreme_programming_explained,test_driven_development_by_example,refactoring,implementation_patterns,tidy_together,planning_extreme_programming]
    ),
    write('Every test pass'), nl.