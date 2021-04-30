func hanoi(_ n: Int, _ from: String, _ mid: String, _ to: String) -> Int {
  n == 1 ? 1 : hanoi(n - 1, from, to, mid) + 1 + hanoi(n - 1, mid, from, to)
}

print("\(hanoi(32, "a", "b", "c")) moves")
