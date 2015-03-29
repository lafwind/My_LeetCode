def rotate_array(nums, k)

  result = nums.reverse[0...k].reverse + nums.reverse[k...nums.length].reverse

end

def rotate_array_2(nums, k)

  while k > 0
    nums.unshift(nums.pop)
    k -= 1
  end
  return nums

end
