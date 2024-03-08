import gleam/io
import gleam/int

pub fn hanoi(n: Int, a: Int, b: Int, c: Int) {
  case n {
    1 -> 1
    _ -> hanoi(n - 1, a, c, b) + 1 + hanoi(n - 1, b, a, c)
  }
}

pub fn main() {
  hanoi(32, 1, 2, 3)
  |> int.to_string()
  |> io.println()
}
