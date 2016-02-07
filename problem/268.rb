# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  return 0 if nums.nil?

  sum = 0

  nums.each { |n| sum += n }

  complete_sum = (1 + nums.length) * nums.length / 2
  
  complete_sum - sum
end

p missing_number [0, 1, 3]
