# @param {Integer[]} nums
# @return {Integer}
def max_coins(nums)
  padded = [1, *nums, 1]
  memo = Array.new(padded.size) {Array.new(padded.size)}

  max_coins_in_range(1, padded.size-2, padded, memo)
end


def max_coins_in_range(from, to, nums, memo)
  return 0 if from > to
  return memo[from][to] if memo[from][to]
  max = 0
  from.upto(to) do |cur|
    coin = max_coins_in_range(from, cur-1, nums, memo) +
           max_coins_in_range(cur+1, to, nums, memo) +
           nums[from-1] * nums[cur] * nums[to+1]
    max = [max, coin].max
  end
  memo[from][to] = max
  max
end
