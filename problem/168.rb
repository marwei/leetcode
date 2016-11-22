# @param {Integer} n
# @return {String}
def convert_to_title(n)
  return '' if n < 1
  result = ''
  until n == 0
    n, rem = (n - 1).divmod(26)
    result = (65 + rem).chr + result
  end
  result
end

p convert_to_title(52)