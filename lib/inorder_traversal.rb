# Definition for a binary tree node

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

# @param {TreeNode} root
# @return {Integer[]}

def inorder_traversal(root)
  s, retval = [], []
  while root != nil || !s.empty?
    if root != nil
      s.push(root)
      root = root.left
    else
      root = s.last.right
      retval << s.pop.val
    end
  end
  retval
end
