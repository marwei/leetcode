require_relative '../problem/2'
require_relative '../lib/list'

describe 'Problem 2' do
  # before { allow(STDOUT).to receive(:puts) { '' } }
  # after { allow(STDOUT).to receive(:puts) { STDOUT::puts } }

  it "returns 3 with l1=1, l2=2" do
    l1 = ListNode.new(1)
    l2 = ListNode.new(2)
    l3 = ListNode.new(3)
    expect(add_two_numbers(l1, l2).list_all).to eq(l3.list_all)
  end
  it "returns 0->0->1 with l1=0->5, l2=0->5" do
    l1 = ListNode.new([0, 5])
    l2 = ListNode.new([0, 5])
    l3 = ListNode.new([0, 0, 1])
    expect(add_two_numbers(l1, l2).list_all).to eq(l3.list_all)
  end
  it "returns 7->0->8 with l1=2->4->3, l2=5->6->4" do
    l1 = ListNode.new([2, 4, 3])
    l2 = ListNode.new([5, 6, 4])
    l3 = ListNode.new([7, 0, 8])
    expect(add_two_numbers(l1, l2).list_all).to eq(l3.list_all)
  end
end
