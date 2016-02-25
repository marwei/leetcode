# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
  return -1 if nums.empty?
  fast = 0
  slow = 0

  loop do
    return -1 unless fast && nums[fast] # no duplicate
    fast = nums[nums[fast]]
    slow = nums[slow]
    break if fast == slow
  end

  fast = 0
  loop do
    fast = nums[fast]
    slow = nums[slow]
    break if fast == slow
  end
  fast
end