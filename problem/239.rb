# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
require 'pry'
def max_sliding_window(nums, k)
  return [] if k > nums.length
  result = []
  deque = []
  0.upto(nums.size-1) do |i|
    deque.shift while deque[0] && deque[0] <= i - k
    if deque[0] && nums[i] > nums[deque[0]]
      deque.unshift i
    else
      deque.pop while deque[-1] && nums[deque[-1]] < nums[i]
      deque.push i
    end
    result.push nums[deque[0]] unless i < k - 1
  end
  result
end