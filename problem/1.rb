# @param {Integer[]} nums
# # @param {Integer} target
# # @return {Integer[]}
def two_sum(nums, target)
  complement_map = {}

  nums.each_with_index do |num, second_idx|
    first_idx = complement_map[target - num]
    return [first_idx, second_idx] if first_idx
    complement_map[num] = second_idx
  end

  return []
end
