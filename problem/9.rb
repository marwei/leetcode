# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  return false if x < 0

  n = x
  reverse = 0
  until n == 0
    n, mod = n.divmod(10)
    reverse = reverse * 10 + mod
  end
  x == reverse
end

