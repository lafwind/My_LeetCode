def reverse(n)

  # result, t, tmp = 0, 1, []
  # n, t = n.abs, -1 if n < 0

  # while n > 0
  #   tmp.unshift(n % 10)
  #   n /= 10
  # end

  # tmp.each_index do |i|
  #   result += tmp[i] * (10**i)
  # end

  # result = result * t

  result = n < 0 ? -(n.abs.to_s.reverse.to_i) : n.to_s.reverse.to_i
  if result > 2**31 - 1  || result < -2**31
    0
  else
    result
  end
end
