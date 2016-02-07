require_relative "../lib/tree.rb"
# @param {Integer} n
# @return {TreeNode[]}
def generate_trees(n)
  return if n == 0 || n.nil?
  generate_trees_for_range(1, n)
end

def generate_trees_for_range(lower, upper)
  return [nil] if lower > upper

  result = []
  (lower..upper).each do |idx|
    left_trees = generate_trees_for_range(lower, idx - 1)
    right_trees = generate_trees_for_range(idx + 1, upper)

    left_trees.each do |left|
      right_trees.each do |right|
        root = TreeNode.new(idx)
        root.left = left
        root.right = right
        result.push root
      end
    end
  end
  result
end
