# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
  return [] if nums.nil?
  return [[]] if nums.empty?

  nums.sort!
  
  result = Array.new
  get_subsets_for nums, result, [], 0
  result
end

def get_subsets_for(nums, result, subset, index)
  subset = subset.dup
  result.push subset
  (index...nums.length).each do |i|
    subset.push nums[i]
    get_subsets_for(nums, result, subset, i + 1)
    subset.pop
  end
end

# def subsets(nums)
#   return [] unless nums
#   nums.sort.each_with_object([[]]) do |num, memo|
#     memo.concat(memo.map {|subset| subset.dup << num })
#   end.uniq
# end

subsets [1, 2, 3]