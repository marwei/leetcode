# @param {String} s
# @return {Integer}
def title_to_number(s)
  result = 0
  length = s.length - 1
  (length.downto 0).each do |i|
    result += (s[i].ord - 64) * (26**(length - i))
  end
  result
end
