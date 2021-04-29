let rec Hanoi n from mid dest : uint64 = 
   match n with
   | 1 -> 1UL
   | n -> (Hanoi (n - 1) from dest mid) + 1UL + (Hanoi (n - 1) mid from dest) 

let value = (Hanoi 32 'a' 'b' 'c')
printfn "Moves: %d" value


