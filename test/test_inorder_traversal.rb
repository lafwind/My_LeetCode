require 'minitest/autorun'
require './lib/inorder_traversal'

class TestInorderTraversal < Minitest::Test

  def setup
    @root = TreeNode.new(1)
    @r = TreeNode.new(2)
    @t = TreeNode.new(3)
    @root.right = @r
    @r.left = @t
  end

  def test_inorder_traversal
    assert_equal [1, 3, 2], inorder_traversal(@root)
  end

end
