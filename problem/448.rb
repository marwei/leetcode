def find_disappeared_numbers(nums)
  nums.each do |n|
    i = n.abs - 1
    nums[i] = -(nums[i].abs)
  end

  [].tap do |memo|
    nums.each_with_index do |n, i|
      memo << i + 1 if n > 0
    end
  end
end
