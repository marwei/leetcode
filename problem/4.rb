# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
# 
# https://leetcode.com/discuss/78268/6-lines-o-log-min-m-n-ruby

def find_median_sorted_arrays(nums1, nums2)
  a, b = [nums1, nums2].sort_by(&:size)
  m, n = a.size, b.size
  after = (m + n - 1) / 2
  i = (0...m).bsearch { |i| after-i-1 < 0 || a[i] >= b[after-i-1] } || m
  nextfew = (a[i,2] + b[after-i,2]).sort
  (nextfew[0] + nextfew[1 - (m+n)%2]) / 2.0
end