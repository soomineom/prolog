hanoi(N) :- func(N,1,2,3). // 하노이 재귀

func(0,_,_,_) :- !.

func(N,A,B,C) :-
        M is N-1,
        func(M,A,C,B),
        inform(M,A,B),
        func(M,C,B,A).

inform(M,F,T) :-
        K is M+1,
        write(K),
        write('->'),
        write([F,T]),
        nl.



