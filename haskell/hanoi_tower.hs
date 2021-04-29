hanoi :: Int -> Int -> Int -> Int -> Int
hanoi 1 _ _ _ = 1
hanoi n x y z = start_to_pass + 1 + pass_to_destination
  where
    start_to_pass = (hanoi (n-1) x z y)
    pass_to_destination = (hanoi (n-1) y x z)

main = do
  putStrLn $ "Moves: " ++ show (hanoi 32 1 2 3)
