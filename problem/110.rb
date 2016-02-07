# @param {TreeNode} root
# @return {Boolean}

def is_balanced(root)
  node_height root
  true
  rescue
  false
end

def node_height root
  return 0 unless root
  left = node_height root.left
  right = node_height root.right
  raise "imbalanced" if (left - right).abs > 1
  1 + [left, right].max
end