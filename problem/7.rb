# @param {Integer} x
# @return {Integer}
def reverse(x)
  return -reverse(-x) if x < 0
  sum = 0
  while x > 0
    sum = sum * 10 + x % 10
    x /= 10
  end
  sum
end