a = Object.new.freeze
b = Object.new.freeze
c = Object.new.freeze

def hanoi(n, from, mid, to)
  return 1 if n == 1

  hanoi(n - 1, from, to, mid) + 1 + hanoi(n - 1, mid, from, to)
end

result = hanoi(32, a, b, c)
puts "#{result} moves"
