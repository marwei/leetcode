# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  return 0 if nums.nil? || nums.empty?

  not_rob = 0
  rob = nums.first

  (1...nums.length).each do |i|
    not_rob, rob = rob, not_rob + nums[i]
    rob = [not_rob, rob].max
  end

  [not_rob, rob].max
end
