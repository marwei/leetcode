require_relative 'tree_node'

module BuildTree
  extend self
  def build_tree_from_array(arr)
    _build_tree_from_array 0, arr 
  end

  def _build_tree_from_array(index, arr)
    return nil if index >= arr.length || arr[index].nil?

    root = TreeNode.new arr[index]
    root.left = _build_tree_from_array (2 * index + 1), arr
    root.right = _build_tree_from_array (2 * index + 2), arr

    root
  end
end