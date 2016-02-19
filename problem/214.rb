# @param {String} s
# @return {String}
def shortest_palindrome(s)
  # find middle index
  mid = (s.length % 2 == 0) ? ((s.length / 2) - 1) : (s.length / 2)
   
  # if middle point in the middle index, return
  return s if s[0..mid-1].reverse == s[mid+1..-1]

  # iteratively find middle point, prepend difference and return
  until mid == 0
    if s[0..(mid-1)].reverse == s[(mid+1)..(mid+mid)] #single middle point   
      return s[(mid+mid+1)..-1].reverse + s
    elsif s[0..(mid-1)].reverse == s[mid..(mid+mid-1)] #double middle point
      return s[(mid+mid)..-1].reverse + s
    end
    mid -= 1
  end

  # can't find middle point, prepend everything
  s[1..-1].reverse + s
end