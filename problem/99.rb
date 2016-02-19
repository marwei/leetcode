require_relative "../lib/tree.rb"

# @param {TreeNode} root
# @return {Void} Do not return anything, modify root in-place instead.
# def recover_tree(root)
#   misplaced = find_misplaced_nodes root
#   return if misplaced.empty?
#   misplaced.push root if misplaced.size == 1
#   misplaced[0].val, misplaced[1].val = misplaced[1].val, misplaced[0].val
#   nil
# end

# def find_misplaced_nodes(root)
#   return unless root

#   left_correct = (root.left.nil? || root.left.val < root.val)
#   right_correct = (root.right.nil? || root.right.val > root.val)

#   # return if left_correct && right_correct

#   misplaced = []
#   misplaced.push root.left unless left_correct
#   misplaced.push root.right unless right_correct

#   misplaced.push *find_misplaced_nodes(root.left)
#   misplaced.push *find_misplaced_nodes(root.right)

#   misplaced
# end

def recover_tree(root)
  
end

tree = Tree.build_tree_from_array [3, nil, 2, nil, nil, 1]

recover_tree tree

Tree.print_tree_graph tree

p find_misplaced_nodes tree