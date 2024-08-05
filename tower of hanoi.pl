hanoi(1, Source, _, Destination) :-

    write('Move disk from '), write(Source),
    write(' to '), write(Destination), nl.
hanoi(N, Source, Auxiliary, Destination) :-

    M is N - 1,
    hanoi(M, Source, Destination, Auxiliary),

    hanoi(1, Source, _, Destination),

    hanoi(M, Auxiliary, Source, Destination).

OUTPUT:
?-hanoi(3).

Move disk from A to C
Move disk from A to B
Move disk from C to B
Move disk from A to C
Move disk from B to A
Move disk from B to C
Move disk from A to C
true 
