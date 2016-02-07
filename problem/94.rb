require_relative '../lib/tree.rb'

# @param {TreeNode} root
# @return {Integer[]}
def inorder_traversal(root)
  return [] if root.nil?
  result = []
  result.concat inorder_traversal root.left if root.left
  result.push root.val
  result.concat inorder_traversal root.right if root.right
  result
end