# ******************************11                                # *30       0
#               /                                \                # *14 _32   1
# **************12______________________________13                # *14 _30   2
#       /                \              /                \        # *6 _16    3
# ******14______________15______________16______________17        # *6 _14    4
# **/        \      /        \      /        \      /        \    # *2 _8     5
# **18______19______11______12______13______14______15______16    # *2 _6     6
# /    \  /    \  /    \  /    \  /    \  /    \  /    \  /    \  # *0 _4     7
# 17  18  19  11  12  13  14  15  16  17  18  19  10  11  12  13  # *0 _2     8

module PrintTree
  extend self
  def print_tree_graph(root)
    tree = tree_to_array root
    height = tree.length

    tree_height = (height * 2) - 1
    result = Array.new(tree_height) { String.new }
    result[0] = '  ' * (2 ** (height - 1) - 1) + (tree[0][0] > 9 ? tree[0][0].to_s : '_' + tree[0][0].to_s)

    (1...tree_height).each do |h|
      level = (h - 1) / 2

      surrounding_space = '  ' * (2 ** (height - level - 2) - 1)
      filling_space = '  ' * (2 ** (height - level - 1) - 1)

      result[h] += surrounding_space
      if h % 2 == 0
        tree[level + 1].each { |node| result[h] += (node.nil? ? '__' : (node > 9 ? node.to_s : '_' + node.to_s)) + filling_space }
      else
        tree[level].length.times { result[h] += '/ ' + filling_space + ' \\' + filling_space }
      end
    end
    
    puts result
  end

  def print_tree_verbose(root)
    return if root.nil?
    root_val = root.val
    left_val = root.left.nil? ? nil : root.left.val
    right_val = root.right.nil? ? nil : root.right.val
    puts "at #{root_val}: left is #{left_val}, right is #{right_val}"
    print_tree_verbose(root.left)
    print_tree_verbose(root.right)
  end

  def tree_to_array(root)
    max_height = max_height root
    curr_height = 1
    result = []
    queue = []
    queue.push root
    curr_level = []

    until queue.empty?
      node = queue.shift

      if node
        queue.push node.left
        queue.push node.right
        curr_level.push node.val
      else
        curr_level.push nil
        queue.push nil, nil if curr_height < max_height
      end
      
      if curr_level.length == 2 ** (curr_height - 1)
        curr_height += 1
        result.push curr_level
        curr_level = []
      end
    end

    result
  end

  def max_height(root)
    return 0 unless root

    left_height = max_height(root.left)
    right_height = max_height(root.right)

    1 + [left_height, right_height].max
  end
end