# A recitation of https://github.com/0x01f7/leetcode/blob/master/algorithms/integer_to_english_words.rb
# Respect to 0x01f7, very elegant ruby code

# @param {Integer} num
# @return {String}
def number_to_words(num)
  return 'Zero' if num.zero?

  w0 = [''   , 'One'     , 'Two'    , 'Three'   , 'Four'    , 'Five'   , 'Six'    , 'Seven'    , 'Eight'   , 'Nine']
  w1 = ['Ten', 'Eleven'  , 'Twelve' , 'Thirteen', 'Fourteen', 'Fifteen', 'Sixteen', 'Seventeen', 'Eighteen', 'Nineteen']
  w2 = [''   , ''        , 'Twenty' , 'Thirty'  , 'Forty'   , 'Fifty'  , 'Sixty'  , 'Seventy'  , 'Eighty'  , 'Ninety']
  w3 = [''   , 'Thousand', 'Million', 'Billion']

  words = []
  (0..3).each do |i|
    num, thou = num.divmod(1000)
    next if thou.zero?
    s = []
    hund, ten = thou.divmod(100)
    s << w0[hund] << 'Hundred' if hund.nonzero?
    case ten
    when 0..9; s << w0[ten]
    when 10..19; s << w1[ten%10]
    when 20..99; s << w2[ten/10] << w0[ten%10]
    end
    s << w3[i]
    words.unshift(*s)
  end

  words.reject(&:empty?).join(' ')
end