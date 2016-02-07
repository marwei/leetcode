# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end

  class << self
    def new(*arg)
      curr = nil
      arg.each do |i|
        curr.next = super(i)
        curr = curr.next
      end
      curr.next = nil
    end

    # must give a block
    def iterate(head)
      while head
        yield
        head = head.next
      end
    end

    def node_away_from(head, index)
      node = head
      while node && index > 0
        node = node.next
        index -= 1
      end
      node
    end
  end
end
