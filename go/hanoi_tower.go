package main

func hanoi(n uint, frm, mid, to byte) uint32 {
	if n == 1 {
		return 1
	}
	return hanoi(n-1, frm, to, mid) + 1 + hanoi(n-1, mid, frm, to)
}

func main() {
	moves := hanoi(32, 1, 2, 3)
	print(moves, " moves\n")
}
