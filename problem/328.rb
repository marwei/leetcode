# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

# @param {ListNode} head
# @return {ListNode}
def odd_even_list(head)
  return head unless head

  odd = head
  even = head.next
  trav = head.next
  
  while trav && trav.next
    odd.next = trav.next
    trav.next = trav.next.next
    odd.next.next = even

    odd = odd.next
    even = odd.next
    trav = trav.next
  end

  head
end

head = ListNode.new(1)

current = head

2.upto(8) do |i|
  current.next = ListNode.new(i)
  current = current.next
end

# current = head

# until current.next.nil?
#   p current.val
#   current = current.next
# end

odd_even_list head

current = head

while current
  p current.val
  current = current.next
end
