actor Main
  fun hanoi(n: U16, from: U8, mid: U8, to: U8): U64 =>
    if n == 1 then
      return 1
    end

    hanoi(n-1, from, to, mid) + 1 + hanoi(n-1, mid, from, to)

  new create(env: Env) =>
    env.out.print(hanoi(32, 1, 2, 3).string())