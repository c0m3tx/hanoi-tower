unit module HanoiTower;

sub hanoi ($n, $a, $b, $c) is export {
    if $n == 1 {
        return 1;
    }
    return hanoi($n - 1, $a, $c, $b) + 1 + hanoi($n - 1, $b, $a, $c);
}

print hanoi(32, 'a', 'b', 'c'), "\n"