# @param {String[]} words
# @return {Integer}
def max_product(words) # rubocop:disable Metrics/AbcSize
  word_mask = Array.new(words.length, 0)

  words.each_index do |idx|
    words[idx].each_char do |char|
      word_mask[idx] |= (1 << (char.ord - 97)) # "a".ord is 97
    end
  end

  max = 0

  words.each_index do |i|
    (i...words.length).each do |j|
      if word_mask[i] & word_mask[j] == 0
        max = [max, words[i].length * words[j].length].max 
      end
    end
  end

  max
end

p max_product %w(abcw baz foo bar xtfn abcdef)
