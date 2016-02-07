# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  nums.each_index do |i|
    if nums[i].zero?
      nums[i] = nil
      nums.push 0
    end
  end
  nums.compact!
  nums
end

b = [0, 0, 1]

p move_zeroes b
