# @param {Integer[]} nums
# @return {Integer[]}
def single_number(nums)
  a = 0
  a_xor_b = 0

  nums.each { |n| a_xor_b ^= n }

  set_bit = a_xor_b & -a_xor_b

  nums.each { |n| a ^= n if set_bit & n != 0 }

  b = a_xor_b ^ a

  [a, b]
end

p single_number [1, 2, 1, 3, 2, 5]
