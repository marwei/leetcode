# @param {String} s
# @return {String[]}
def find_repeated_dna_sequences(s)
  return [] if s.length < 10
  result = []
  memo = Hash.new { |_k, v| v = 0 }
  (0..s.length-10).each do |idx|
    cur = s[idx, 10]
    result << cur if memo[cur] == 1
    memo[cur] += 1
  end
  result
end

p find_repeated_dna_sequences '"AAAAAAAAAAA"'