fn hanoi(n: u32, from: &char, mid: &char, to: &char) -> u32 {
  if n == 1 {
    return 1;
  }
  return hanoi(n-1, from, to, mid) + 1 + hanoi(n-1, mid, from, to);
}

fn main() {
    let moves = hanoi(32, &'a', &'b', &'c');
    println!("{} moves", moves);
}
