# @param {Integer} num
# @return {Integer}
def add_digits(num)
  result = 0
  until num < 10
    num.to_s.each_char do |i|
      result += i.to_i
    end
    num = result
    result = 0
  end
  num
end
