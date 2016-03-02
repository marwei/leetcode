require_relative '../lib/list'

# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
  stack = []
  slow, fast = head, head
  while fast && fast.next
    stack.push slow.val
    slow = slow.next
    fast = fast.next.next
  end
  # ignore the middle one when there's odd num of nodes
  slow = slow.next if fast

  until stack.empty?
    return false unless stack.pop == slow.val
    slow = slow.next
  end
  true
end