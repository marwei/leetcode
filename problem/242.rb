# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  s.split(//).sort.join.eql? t.split(//).sort.join
end

p is_anagram('rat', "tar")
