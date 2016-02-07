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
# @return {TreeNode}
def invert_tree(root)
  queue = []
  queue.push root

  until queue.empty?
    curr = queue.shift
    next if curr.nil?
    
    queue.push curr.left
    queue.push curr.right

    curr.left, curr.right = curr.right, curr.left
  end
  root
end

# head = TreeNode.new(1)
# head.left = TreeNode.new(2)
# head.right = TreeNode.new(3)
# two = head.left
# two.left = TreeNode.new(4)
# two.right = TreeNode.new(5)
# three = head.right
# three.left = TreeNode.new(6)
# three.right = nil
# four = two.left
# four.left = TreeNode.new(7)
# four.right = TreeNode.new(8)
# five = two.right
# five.left = TreeNode.new(9)
# five.right = TreeNode.new(10)

# def print_tree(root)
#   queue = []
#   queue.push root

#   until queue.empty?
#     curr = queue.shift
#     next if curr.nil?

#     queue.push curr.left
#     queue.push curr.right

#     puts "#{curr.val}'s left is "+"#{curr.left.val}" if curr.left
#     puts "#{curr.val}'s right is "+"#{curr.right.val}" if curr.right
#   end
# end

# invert_tree head

# print_tree head
