fun main() {
    val prints: Long = hanoi(32, 'A', 'B', 'C')
    println("$prints moves")
}

fun hanoi(n: Int, from: Char, mid: Char, to: Char): Long =
    if (n == 1) 1 else (hanoi(n-1, from, to, mid) + 1 + hanoi(n-1, mid, from, to))