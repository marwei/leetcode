# @param {Integer} numerator
# @param {Integer} denominator
# @return {String}
def fraction_to_decimal(numerator, denominator)
  return "0" if numerator == 0
  return nil if denominator == 0

  str = ''
  str = '-' if numerator * denominator < 0

  numerator = numerator.abs
  denominator = denominator.abs

  str += (numerator / denominator).to_s

  return str if numerator % denominator == 0

  str += '.'
  numerator %= denominator

  i = str.length
  table = Hash.new

  until numerator == 0
    if table.has_key? numerator
      i = table[numerator]
      str = str[0...i] + '(' + str[i..-1] + ')'
      return str
    else
      table[numerator] = i
    end

    numerator *= 10
    str += (numerator / denominator).to_s
    numerator %= denominator
    i += 1
  end
  return str
end