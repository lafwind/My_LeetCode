# Given a string, find the length of the longest substring without repeating characters.
# For example, the longest substring without repeating letters for "abcabcbb" is "abc",
# which the length is 3. For "bbbbb" the longest substring is "b", with the length of 1.

def length_of_longest_substring(s)
  longest = 0
  map = {}
  first, i = 0, 0

  while i < s.length
    if map.has_key? s[i]
      first = first > map[s[i]] + 1 ? first : map[s[i]] + 1
    end

    map[s[i]] = i
    longest = longest > (i - first + 1) ? longest : (i - first + 1)

    i += 1
  end

  longest
end
