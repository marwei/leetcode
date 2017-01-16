# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end

  def self.new(val)
    if val.respond_to? :each
      head = super(val[0])
      curr = head
      (1...val.size).each do |i|
        curr.next = super(val[i])
        curr = curr.next
      end
      head
    else
      super(val)
    end
  end

  # must give a block
  def map
    cur = self
    while cur
      yield(cur)
      cur = cur.next
    end
    self
  end

  def list_all(options = {print: false})
    res = []
    self.map do |n|
      res << n.val
    end
    res.tap { |str| puts str.join('->') if options[:print] }
  end

  def [](idx)
    fr = self
    idx.abs.times do
      return nil unless fr
      fr = fr.next
    end
    if idx < 0
      res = self
      while fr
        res = res.next
        fr = fr.next
      end
      res
    else 
      fr
    end
  end

  def <<(node)
    cur = self
    cur = cur.next while cur.next
    cur.next = node
    self
  end
end

