defmodule HanoiTower do
  def hanoi(n), do: hanoi(n, 1, 2, 3)
  def hanoi(1, _, _, _), do: 1
  def hanoi(n, a, b, c), do: hanoi(n-1, a, c, b) + 1 + hanoi(n-1, b, a, c)
end

# moves = HanoiTower.hanoi(32,"a","b","c")
# IO.puts("#{moves} moves")
