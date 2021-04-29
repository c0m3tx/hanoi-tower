-module (hanoi_tower).
-export([start/0]).

hanoi(1,_A,_B,_C) -> 1 ;
hanoi(N,A,B,C) -> hanoi(N-1,A,C,B) + 1 + hanoi(N-1,B,A,C) .

start() ->
  Moves = hanoi(32,'a','b','c') ,
  io:fwrite("Moves: ~B~n", [Moves]) .
