proc hanoi(n: int, a: int, b: int, c: int): int =
  if n == 1:
    return 1
  else:
    return hanoi(n-1, a, c, b) + 1 + hanoi(n-1, b, a, c)

echo hanoi(32, 1, 2, 3)