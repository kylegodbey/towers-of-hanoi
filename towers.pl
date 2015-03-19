play(0,_,_,_):-
  !.
play(N,I,J,K):-
  L is N-1,
  play(L,I,K,J),
  step(I,J),
  write(L),
  play(L,K,J,I).

step(I,J):-
  write('Place disk from the '),
  write(I),
  write(' peg to the '),
  write(J),
  write(' peg.'),
  nl.