# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {ListNode} head
# @return {TreeNode}
def sorted_list_to_bst(head)
  sorted_list_to_bst_helper(head, nil)
end

def sorted_list_to_bst_helper(head, tail)
  return nil if head == tail
  fast = slow = head

  until fast == tail || fast.next == tail
    fast = fast.next.next
    slow = slow.next
  end

  root = ListNode.new(slow.val)
  root.left = sorted_list_to_bst_helper(head, slow)
  root.right = sorted_list_to_bst_helper(slow.next, tail)

  root
end
