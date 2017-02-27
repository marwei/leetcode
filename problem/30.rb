def find_substring(s, words)
  words_size = words.size
  word_length = words[0].size

  word_map = words.each_with_object(Hash.new(0)) do |word, memo|
    memo[word] += 1
  end

  res = []

  s.size.times do |idx|
    sub_s = s[idx...idx+words_size*word_length]
    tmp_word_map = word_map.dup
    sub_s.scan(/.{#{word_length}}/).each do |word|
      break if tmp_word_map[word] == 0
      tmp_word_map[word] -= 1
    end

    res << idx if tmp_word_map.values.reduce(:+) == 0
  end

  res
end
