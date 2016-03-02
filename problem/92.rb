require_relative "../lib/list"
# @param {ListNode} head
# @param {Integer} m
# @param {Integer} n
# @return {ListNode}
require 'pry'
def reverse_between(head, m, n)
  return head unless m < n
  dummy_head = ListNode.new(0)
  dummy_head.next = head
  slow, fast = dummy_head, head

  (m-1).times { slow = slow.next }
  n.times { fast = fast.next }

  cur = slow.next
  prv = nil
  until cur == fast
    nxt = cur.next
    cur.next = prv
    prv = cur
    cur = nxt
  end
  slow.next.next = fast
  slow.next = prv
  dummy_head.next
end