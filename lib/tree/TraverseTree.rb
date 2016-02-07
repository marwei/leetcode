require_relative 'tree_node'

module TraverseTree
  # def inorder_traverse root
  #   return nil unless root
  #   result = []
  #   result.concat inorder_traverse root.left if root.left
  #   result.push root.val
  #   result.concat inorder_traverse root.right if root.right
  #   result
  # end

  # def preorder_traverse root
  #   return nil unless root
  #   result = []
  #   result.push root.val
  #   result.concat preorder_traverse root.left if root.left
  #   result.concat preorder_traverse root.right if root.right
  #   result
  # end

  # def postorder_traverse root
  #   return nil unless root
  #   result = []
  #   result.concat postorder_traverse root.left if root.left
  #   result.concat postorder_traverse root.right if root.right
  #   result.push root.val
  #   result
  # end
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