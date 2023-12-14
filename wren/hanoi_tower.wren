class Hanoi {
    static main(n) {
        hanoi(n, "a", "b", "c")
    }

    static hanoi(n, a, b, c) {
        if (n == 1) {
            return 1
        }

        return hanoi(n-1, a, c, b) + 1 + hanoi(n-1, b, a, c)
    }
}

System.print("Moves: " + Hanoi.main(32).toString)