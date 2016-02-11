# @param {Integer} n
# @param {Integer[][]} edges
# @return {Integer[]}
def find_min_height_trees(n, edges)
  return [0] if n == 1
  
  adjancency = Hash.new { |hash, key| hash[key] = Array.new }

  # adjancency matrix
  edges.each do |from, to|
    adjancency[from].push to
    adjancency[to].push from
  end

  # find all singles
  leafs = adjancency.each_with_object([]) do |(key, val), memo|
    memo.push key if val.size == 1
  end

  # trim leaves until there's 1 or 2 nodes left
  while adjancency.size > 2
    leafs = leafs.each_with_object([]) do |leaf, memo|
      parent = adjancency[leaf].first
      adjancency.delete leaf
      adjancency[parent].delete leaf
      memo.push parent if adjancency[parent].size == 1
    end
  end
  leafs
end