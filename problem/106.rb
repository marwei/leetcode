require '../lib/tree'
# @param {Integer[]} inorder
# @param {Integer[]} postorder
# @return {TreeNode}
def build_tree(inorder, postorder)
  return nil if inorder.empty?

  root = TreeNode.new(postorder[-1])

  inorder_root_index = inorder.index(root.val)

  root.left = build_tree(inorder[0...inorder_root_index],
                         postorder[0...inorder_root_index])
  root.right = build_tree(inorder[inorder_root_index + 1...inorder.length],
                          postorder[inorder_root_index...postorder.length - 1])

  root
end



# root = build_tree([8, 4, 2, 9, 5, 10, 1, 6, 3, 12, 7, 11], [8, 4, 9, 10, 5, 2, 6, 12, 11, 7, 3, 1])

root = Tree.build_tree_from_array [1, 2, 3, 4, 5, 6, 7, 8, nil, 9, 10, nil, nil, 12, 11]

# Tree.print_tree_verbose root

# Tree.print_tree_graph root

p Tree.inorder_traverse root
p Tree.preorder_traverse root
p Tree.postorder_traverse root