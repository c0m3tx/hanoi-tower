function hanoi(n, a, b, c)
    if n == 1
        return 1
    end

    return hanoi(n - 1, a, c, b) + 1 + hanoi(n - 1, b, a, c)
end

hanoi(32, "a", "b", "c") |> println