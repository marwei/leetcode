def find_the_difference(s, t)
  memo = Hash.new(0)

  t.each_char do |char|
    memo[char] += 1
  end

  s.each_char do |char|
    memo[char] -= 1
  end

  memo.each do |key, value|
    return key if value > 0
  end
end
