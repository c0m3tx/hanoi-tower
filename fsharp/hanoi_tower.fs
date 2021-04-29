let rec hanoi n, a, b, c = function
    | 1 -> 1
    | n -> hanoi (n - 1, a, b, c) + 1 + hanoi (n - 1, b, c, a)

let value = hanoi(32, 'a', 'b', 'c')
printfn "Moves: %d" value

(* not checked, fsharp does not work on my system xD *)