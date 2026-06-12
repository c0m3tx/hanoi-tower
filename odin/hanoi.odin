package main

import "core:fmt"

hanoi :: proc(x: rune, y: rune, z: rune, n: u64) -> u64 {
	if n == 1 {
		return 1
	}

	return hanoi(x, z, y, n - 1) + 1 + hanoi(y, x, z, n - 1)
}

main :: proc() {
	fmt.println(hanoi('a', 'b', 'c', 32))
}
