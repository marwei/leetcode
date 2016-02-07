# fun practice of Enumerable#inject and Enumerable#each_with_object
# http://technology.customink.com/blog/2014/10/14/better-hash-injection-using-each-with-object/


# @param {Integer} n
# @return {Integer}
def num_trees(n)
  unique_trees_for = [1, 1]

  (2..n).each_with_object(unique_trees_for) do |i, arr|
    arr[i] = (0...i).inject(0) do |sum, j|
      sum + (arr[j] * arr[i - j - 1])
    end
  end

  unique_trees_for[n]
end