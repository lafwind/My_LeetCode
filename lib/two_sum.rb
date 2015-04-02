def two_sum(numbers, target)
  numbers.each_index do |i|
    t = target-numbers[i]
    if numbers.include?(t)
      if i > t
        return [numbers.index(t)+1, i+1]
      else
        return [i+1, numbers.index(t)+1]
      end
    end
  end
end
