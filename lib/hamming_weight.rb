# @param {Integer} n, a positive integer
# # @return {Integer}

def hamming_weight(n)

  return 0 if n == 0

  retval = 1
  while n != 1
    retval = retval + 1 if n % 2 == 1
    n /= 2
  end
  retval
end
