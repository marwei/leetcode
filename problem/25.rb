require_relative '../lib/list.rb'
# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def reverse_k_group(head, k)
  dummy_head = ListNode.new(0)
  tail = dummy_head

  fast, slow = head, head

  while fast
    i = k - 1
    while fast.next && i > 0
      i -= 1
      fast = fast.next
    end
    break if i > 0

    cur, prev = slow, nil
    k.times do
      nxt = cur.next
      cur.next = prev
      prev = cur
      cur = nxt
    end

    tail.next = fast
    tail = slow

    fast, slow = cur, cur
  end
  tail.next = slow

  dummy_head.next
end