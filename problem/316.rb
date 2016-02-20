# @param {String} s
# @return {String}
def remove_duplicate_letters(s)
  # char_count used to track a char's last appearance
  char_count = Hash.new { |k, v| v = 0 }
  s.each_char do |char|
    char_count[char] += 1
  end

  result = []

  # traverse string, decrement counter to track whether current
  # char is its last appearance
  # if current char is smaller than the last char in result, and 
  # last char is not the last occurance of that char, pop result,
  # until no more popable
  # append current char
  s.each_char do |char|
    char_count[char] -= 1
    next if result.include? char

    result.pop while (result.last && 
                char_count[result.last] > 0 && 
                char < result.last)
  
    result.push char
  end

  result.join('')
end