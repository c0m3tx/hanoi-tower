let rec hanoi x a b c =
  if x <= 1 then 1
  else (hanoi (x-1) a c b) + 1 + (hanoi (x-1) b a c)

let main = hanoi 32 "a" "b" "c"