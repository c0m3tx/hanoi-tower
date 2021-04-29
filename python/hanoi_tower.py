def hanoi(n, frm, mid, to):
    if n == 1:
        return 1
    else:
        return hanoi(n-1, frm, to, mid) + 1 + hanoi(n-1, mid, frm, to)

moves = hanoi(32, 1, 2, 3)
print("%d moves" % moves)
