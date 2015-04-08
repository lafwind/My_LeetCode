def two_sum(numbers, target)
  numbers.each_index do |i|
    t = target-numbers[i]
    if numbers.include?(t) && i != numbers.index(t)
      return [i+1, numbers.index(t)+1].sort
    end
  end
end
