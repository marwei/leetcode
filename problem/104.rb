# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left = nil
    @right = nil
  end
end

# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
  return 0 if root.nil?

  left_depth = max_depth(root.left)
  right_depth = max_depth(root.right)

  (left_depth > right_depth ? left_depth : right_depth) + 1
end

# root = TreeNode.new(0)

# p root.val

# root.left = TreeNode.new(1)

# p max_depth root
