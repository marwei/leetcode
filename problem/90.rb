# @param {Integer[]} nums
# @return {Integer[][]}
def subsets_with_dup(nums)
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
  i = index
  while i < nums.length
    subset.push nums[i]
    get_subsets_for(nums, result, subset, i + 1)
    subset.pop

    i += 1 while i + 1 < nums.length && nums[i + 1] == nums[i]

    i += 1
  end
end

p subsets_with_dup [1, 2, 2, 2]