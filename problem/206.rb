require_relative '../lib/list'
# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  prev = nil
  cur  = head
  while cur
    nxt      = cur.next
    cur.next = prev
    prev     = cur
    cur      = nxt
  end
  head = prev
end