def trailing_zeroes(n)
  ret = 0
  while n != 0
    ret += n / 5
    n /= 5
  end
  ret
end
