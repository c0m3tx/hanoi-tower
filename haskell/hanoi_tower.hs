data Tower = A | B | C deriving Show

hanoi :: Int -> Tower -> Tower -> Tower -> Int
hanoi 1 _ _ _ = 1
hanoi n x y z = 
  (hanoi (n - 1) x z y) + 1 + (hanoi (n - 1) y x z)

main = do
  putStrLn $ "Moves: " ++ show (hanoi 32 A B C)
