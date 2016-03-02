# @param {Integer} n
# @return {Integer}
def count_digit_one(n)
  result = 0
  a = 1
  b = 1
  while n > 0
    p (n + 8) / 10 * a
    result += (n + 8) / 10 * a + (((n % 10 == 1) ? 1 : 0) * b)
    b += n % 10 * a
    a *= 10
    n /= 10
  end
  result
end