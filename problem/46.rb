# @param {Integer[]} nums
# @return {Integer[][]}
# 
def permute(nums)
  return [nums] if nums.length == 1

  result = []
  nums.each do |n|
    sub_array = permute(nums-[n])
    sub_array.each do |sub|
      result.push [n] + sub
    end
  end
  result
end