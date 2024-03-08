import gleeunit
import gleeunit/should
import hanoi_tower

pub fn main() {
  gleeunit.main()
}

// gleeunit test functions end in `_test`
pub fn hanoi_tower_test() {
  should.equal(hanoi_tower.hanoi(16, 1, 2, 3), 65_535)
}
