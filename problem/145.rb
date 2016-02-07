require_relative '../lib/tree.rb'

# @param {TreeNode} root
# @return {Integer[]}
def postorder_traversal(root)
  return [] if root.nil?
  result = []
  result.concat postorder_traversal root.left if root.left
  result.concat postorder_traversal root.right if root.right
  result.push root.val
  result
end