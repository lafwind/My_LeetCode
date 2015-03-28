# Given an integer, convert it to a roman numeral.
# Input is guaranteed to be within the range from 1 to 3999.

def int_to_roman(num)
  # code

  roman = [
    ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"],
    ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"],
    ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"],
    ["", "M", "MM", "MMM"]
  ]

  ret, index = "", 0
  while (num > 0)
      tmp  = num % 10
      ret = roman[index][tmp] + ret
      num, index = num / 10, index + 1
  end

  ret
end
