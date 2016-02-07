require_relative 'tree_node'

module TraverseTree
  extend self
  def traverse_recurse(root, options)
    return unless root
    options[:preorder].call(root.val) if options[:preorder]
    traverse_recurse(root.left, options)
    options[:inorder].call(root.val) if options[:inorder]
    traverse_recurse(root.right, options)
    options[:postorder].call(root.val) if options[:postorder]
  end

  def traverse_collect(root, type)
    result = []
    traverse_recurse(root, type => lambda { |val| result.push(val) })
    result
  end

  def preorder_traversal(root)
    traverse_collect(root, :preorder)
  end

  def inorder_traversal(root)
    traverse_collect(root, :inorder)
  end

  def postorder_traversal(root)
    traverse_collect(root, :postorder)
  end
end