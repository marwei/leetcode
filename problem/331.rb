# @param {String} preorder
# @return {Boolean}
def is_valid_serialization(preorder)
  stack = []
  preorder.split(',').each do |node|
    stack << node
    while stack[-2..-1] == ['#', '#'] && 
          stack[-3] && stack[-3] != '#'
      3.times { stack.pop }
      stack << '#'
    end
  end
  p stack
  stack.size == 1 && stack[0] == '#'
end

p is_valid_serialization("1,#,#,#,#")