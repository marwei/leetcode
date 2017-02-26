def find_max_consecutive_ones(nums)
  res = 0
  memo = 0

  nums.each do |n|
    if n == 1
      memo += 1
    else
      res = [res, memo].max
      memo = 0
    end
  end

  [res, memo].max
end
