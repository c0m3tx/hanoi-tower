var hanoiCount = 0
func hanoi(n:Int, a:String, b:String, c:String) {
    if (n > 0) {
        hanoi(n: n - 1, a: a, b: c, c: b)
        hanoiCount = hanoiCount + 1
        hanoi(n: n - 1, a: b, b: a, c: c)
    }
}


print("start")
hanoi(n: 32, a: "a", b: "b", c: "c")
print("done")
print("moves: \(hanoiCount)")
