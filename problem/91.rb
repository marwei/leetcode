# @param {String} s
# @return {Integer}
def num_decodings(s)
  return 0 if s.empty?
  count = Array.new(s.size, 0)
  count[0] = 1 if s[0] != '0'
  count[1] = count[0] if s[1] != '0'
  count[1] += 1       if (s[0] != '0' && s[0, 2].to_i.between?(1, 26))

  (2...s.size).each do |idx|
    count[idx] = count[idx-1] if s[idx] != '0'
    count[idx] += count[idx-2] if s[idx-1] != '0' && s[idx-1, 2].to_i.between?(1, 26)
  end
  count[s.size-1]
end