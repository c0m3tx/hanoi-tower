let rec Hanoi n from mid dest = 
   match n with
   | 1 -> 1
   | n -> (Hanoi (n - 1) from dest mid) + 1 + (Hanoi (n - 1) mid from dest) 

let value = (Hanoi 32 'a' 'b' 'c')
printfn "Moves: %d" value


