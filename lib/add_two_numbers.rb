# You are given two linked lists representing two non-negative numbers.
# The digits are stored in reverse order and each of their nodes contain
# a single digit. Add the two numbers and return it as a linked list.
# Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
# Output: 7 -> 0 -> 8

class ListNode
  attr_accessor :val, :next

  def initialize(val)
    @val = val
    @next = nil
  end
end

def add_two_numbers(l1, l2)
  tmp = l1.val + l2.val > 9 ? 1 : 0
  v = (l1.val + l2.val) % 10
  root = ans = ListNode.new(v)
  l1, l2 = l1.next, l2.next

  while l1 != nil && l2 != nil
    v = (l1.val + l2.val + tmp) % 10
    tmp = l1.val + l2.val + tmp > 9 ? 1 : 0
    ans.next = ListNode.new(v)
    ans = ans.next
    l1, l2 = l1.next, l2.next
  end

  ans.next = l1 != nil ? l1 : l2

  if tmp == 1
    if ans.next == nil
      ans.next = ListNode.new(1)
    else
      ans = ans.next
      while ans.next != nil
        if ans.val == 9
          ans.val = 0
          tmp = 1
        else
          ans.val += tmp
          tmp = 0
          break
        end
        ans = ans.next
      end

      if tmp == 1
        if ans.val == 9
          ans.val = 0
          ans.next = ListNode.new(1)
        else
          ans.val += 1
        end
      end
    end
  end

  return root
end
