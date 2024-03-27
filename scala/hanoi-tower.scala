def hanoi(n: Long, a: String, b: String, c: String): Long =
    if (n == 1) then 1
    else hanoi(n-1, a, c, b) + 1 + hanoi(n-1, b, a, c)


def main(args: Array[String]): Unit = println(hanoi(32, "A", "B", "C"))