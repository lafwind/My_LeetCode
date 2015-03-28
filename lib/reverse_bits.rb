
def reverse_bits(n)

  return 0 if n == 0
  tmp, result = [], 0

  while n != 1
    tmp.unshift(n % 2)
    n /= 2
  end
  tmp.unshift(1)

  while tmp.length != 32
    tmp.unshift(0)
  end

  tmp.each_index do |i|
    result += tmp[i] * 2**i
  end
  result

end
