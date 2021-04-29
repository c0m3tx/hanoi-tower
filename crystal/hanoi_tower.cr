def hanoi(n : UInt8, from, mid, to) : UInt64
  return 1_u64 if(n == 1)

  hanoi(n-1, from, to, mid) + 1_u64 + hanoi2(n-1, mid, from, to)
end

def hanoi2(n : UInt8, from, mid, to) : UInt64
  return 1_u64 if(n == 1)

  hanoi(n-1, from, to, mid) + 1_u64 + hanoi2(n-1, mid, from, to)
end

iterations = hanoi(32_u8, 'a','b','c');
puts "#{iterations} moves"
