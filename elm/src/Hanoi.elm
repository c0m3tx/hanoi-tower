module Hanoi exposing (..)

hanoi : Int -> String -> String -> String -> Int
hanoi n a b c =
    if n == 1 then
        1
    else
        (hanoi (n - 1) a c b) + 1 + (hanoi (n - 1) b a c)
