require_relative '../lib/list'

# Definition for singly-linked list.
# # class ListNode
# #     attr_accessor :val, :next
# #     def initialize(val)
# #         @val = val
# #         @next = nil
# #     end
# # end
#
# # @param {ListNode} l1
# # @param {ListNode} l2
# # @return {ListNode}
def add_two_numbers(l1, l2)
  _add_two_numbers(l1, l2, 0)
end

def _add_two_numbers(l1, l2, carry)
  return nil unless l1 || l2 || carry.nonzero?

  curr_val = (l1 ? l1.val : 0) + (l2 ? l2.val : 0) + carry
  carry, curr_val = curr_val.divmod(10)

  ListNode.new(curr_val) << _add_two_numbers(l1 ? l1.next : nil, l2 ? l2.next : nil, carry)
end
