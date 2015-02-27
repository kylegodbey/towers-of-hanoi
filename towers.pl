play(1,I,J,_):-
  write('Place disk from '),
  write(I),
  write(' peg to the '),
  write(J),
  write(' peg.'),
  nl.
play(N,I,J,K):-
  N>1,
  L is N-1,
  play(L,I,K,J),
  play(L,I,J,_),
  play(L,K,J,I).
  

