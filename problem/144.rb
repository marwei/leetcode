require_relative '../lib/tree.rb'

# @param {TreeNode} root
# @return {Integer[]}
def preorder_traversal(root)
  return [] if root.nil?
  result = []
  result.push root.val
  result.concat preorder_traversal root.left if root.left
  result.concat preorder_traversal root.right if root.right
  result
end