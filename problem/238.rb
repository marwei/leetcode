def product_except_self(nums)
  return nil if nums.nil?
  return nums if nums.length == 1

  result = Array.new(nums.length, 1)

  (1...nums.length).each do |i|
    result[i] = result[i - 1] * nums[i - 1]
  end

  product_of_right = nums[-1]
  (1...nums.length).each do |i|
    result[-1 - i] *= product_of_right
    product_of_right *= nums[-1 - i]
  end

  result
end

product_except_self [1,2,3,4]