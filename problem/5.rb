# @param {String} s
# # @return {Integer}

def length_of_longest_substring(s)
  return s.length if s.length <= 1

  longest_str = ""
  current_str = ""

  s.each_char do |char|
    while current_str.include? char
      current_str = current_str[1..-1]
    end
    current_str += char
    longest_str = current_str if longest_str.length < current_str.length
  end

  longest_str.length
end
